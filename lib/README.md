#Liker

Liker is wrapper to social networks API, which fetches the count of likes for specified URL. It supports Twitter, Facebook and VK. You are welcome to add support of some other resources.

##Examples

    Liker.likes_count "http://evrone.ru/", :source => :facebook
     => 60
     
    Liker.likes_count "http://evrone.ru/"
     => {:total=>105, :vk=>5, :twitter=>40, :facebook=>60}

##Installation

```gem install likes```

or add `gem "likes"` to the `Gemfile`

##Author

* [Kir Shatrov](https://github.com/kirs/), [Evrone.com](http://evrone.com)