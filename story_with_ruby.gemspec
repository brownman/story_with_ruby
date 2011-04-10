# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "story_with_ruby/version"

Gem::Specification.new do |s|
  s.name        = "story_with_ruby"
  s.version     = StoryWithRuby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["ofer brown"]
  s.email       = ["brownman556@gmail.com"]
  s.homepage    = "https://github.com/brownman/story_with_ruby"
  s.summary     = %q{learn ruby by composing a story}
  s.description = %q{i use it for practicing ruby and rails}

  s.rubyforge_project = "story_with_ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency "rainbow"
end
