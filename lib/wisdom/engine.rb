module Wisdom
  class Engine < ::Rails::Engine
    isolate_namespace Wisdom

    require 'jquery-ui-rails'
    require 'bootstrap-sass'
    require 'ranked-model'
    require 'bootstrap-wysihtml5-rails'
    
    config.generators do |g|
      g.test_framework      :rspec,        :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
