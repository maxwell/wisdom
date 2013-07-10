module Wisdom
  class ApplicationController < ActionController::Base
    helper_method :can_edit?

    def can_edit?
      warden.authenticate! :scope => :admin
      current_admin.try(Wisdom.config.admin_method)
    end

    def require_admin!
      unless can_edit?
        redirect_to root_url
        return
      end
    end
  end
end
