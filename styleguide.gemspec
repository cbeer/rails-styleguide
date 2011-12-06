$:.push File.expand_path("../lib", __FILE__)
require 'styleguide/version'

Gem::Specification.new do |s|
  s.name = "styleguide"
  s.summary = "Insert Styleguide summary."
  s.authors = ["Chris Beer"]
  s.description = "Insert Styleguide description."
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  # s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.version = Styleguide.version

  s.add_dependency "kss"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "rails", "~> 3.1.0"
end
