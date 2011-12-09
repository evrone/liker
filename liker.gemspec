# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "liker/version"

Gem::Specification.new do |s|
  s.name        = "liker"
  s.version     = Liker::VERSION
  s.authors     = ["Kir Shatrov"]
  s.email       = ["shatrov@me.com"]
  s.homepage    = ""
  s.summary     = %q{Fetches the count of likes for specified URL in social networks}
  s.description = %q{Fetches the count of likes for specified URL in social networks}

  s.rubyforge_project = "liker"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "json"
end
