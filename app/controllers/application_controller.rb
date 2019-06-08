class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :basic

  private
  def basic
    authenticate_or_request_with_http_basic do |name, password|
      name == "okadato" && password == "okadato"
    end
  end
end
