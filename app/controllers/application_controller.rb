class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate

  USERS = { "user" => "password" }

  private

  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end
end
