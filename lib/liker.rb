require "liker/version"
require 'net/http'
require 'json'

module Liker
  def self.likes_count(*options)
    url = options[0]
    raise ArgumentError, "Specify the url as the first argument" unless url
    source = options[1][:source] rescue nil
    if source
      Liker.send("#{source}_likes_count", url)
    else
      result = {
        :facebook => self.facebook_likes_count(url),
        :vk => self.vk_likes_count(url),
        :twitter => self.twitter_likes_count(url)
      }
      result[:total] = result.values.inject(:+)
      result
    end
  end
  
private

  def self.facebook_likes_count(url)
    resp = Net::HTTP.get_response("graph.facebook.com", "/#{url}")
    likes_count(JSON.parse(resp.body), "shares")
  end

  def self.vk_likes_count(url)
    base_url = "http://vkontakte.ru/share.php"
    url = "#{base_url}?act=count&index=0&url=#{url}"
    resp = Net::HTTP.get_response(URI.parse(url))
    regexp = /[VK.Share.count(0, ]([\d]*)[);]/
    likes_count(regexp.match(resp.body), 1)
  end

  def self.twitter_likes_count(url)
    resp = Net::HTTP.get_response("cdn.api.twitter.com", "/1/urls/count.json?url=#{url}&callback=")
    likes_count(JSON.parse(resp.body), "count")
  end

  def self.likes_count(source, key)
    source ? source[key].to_i : 0
  end
  
end
