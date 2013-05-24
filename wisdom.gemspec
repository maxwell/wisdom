$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wisdom/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wisdom"
  s.version     = Wisdom::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Wisdom."
  s.description = "TODO: Description of Wisdom."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "jquery-rails"
  s.add_dependency "jquery-ui-rails"
  s.add_dependency "ranked-model"
  s.add_dependency 'bootstrap-wysihtml5-rails'

  s.add_dependency "sass-rails"
  s.add_dependency "bootstrap-sass"


  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.test_files = Dir["spec/**/*"]
end
