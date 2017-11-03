# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  layout :layout_by_resource
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

   private

   def layout_by_resource
     if devise_controller?
       "devise"
     else
       "application"
     end
   end

   def user_not_authorized(exception)
      policy_name = exception.policy.class.to_s.underscore

      flash[:error] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
      redirect_to(request.referrer || root_path)
    end   
end
