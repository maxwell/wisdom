module Wisdom
  class Engine < ::Rails::Engine
    isolate_namespace Wisdom

    require 'jquery-ui-rails'
    require 'bootstrap-sass'
    require 'ranked-model'
    require 'bootstrap-wysihtml5-rails'
    require 'rails_autolink'
    
    config.generators do |g|
      g.test_framework      :rspec,        :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end

    config.current_user_method = lambda{current_user}
    config.admin_method = :is_staff?
    config.contact_email = ''
    config.site_title = 'Wisdom'
    config.stylesheet_paths = []

  end



  def self.config(&block)
    yield Engine.config if block
    Engine.config
  end
end
