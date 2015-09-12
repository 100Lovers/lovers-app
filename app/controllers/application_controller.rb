class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Jpmobile::ViewSelector
  before_filter :set_view_path, :basic_auth

  private
    def set_view_path
      path =  request.smart_phone? ? "sp" : "pc"
      prepend_view_path(Rails.root + "app/views" + path)
    end

    def basic_auth
      if Rails.env.production? then
        authenticate_or_request_with_http_basic do |user, pass|
          user == 'hayato' && pass == 'test'
        end
      end
    end
end
