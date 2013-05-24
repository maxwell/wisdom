module Wisdom
  class ApplicationController < ActionController::Base
    helper_method :can_edit?


    def can_edit?
      true
    end


    def require_admin!
      unless can_edit?
        redirect_to root_url
        return
      end
    end
  end
end
