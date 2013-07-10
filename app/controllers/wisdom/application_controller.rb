module Wisdom
  class ApplicationController < ActionController::Base
    helper_method :can_edit?


    def can_edit?
      user =  begin
                Wisdom.config.current_user_method.call()
            rescue
              nil
            end
        user.try(Wisdom.config.admin_method)
    end


    def require_admin!
      unless can_edit?
        redirect_to root_url
        return
      end
    end
  end
end
