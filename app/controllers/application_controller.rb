# Purpose: This is the base controller for all other controllers in the application.
class ApplicationController < ActionController::Base
    def current_user
        User.first
    end
end
