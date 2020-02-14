class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :basic_auth

  private

    # ユーザーのログインを確認する
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
        username == 'admin' && password == '000p'
      end
    end

end
