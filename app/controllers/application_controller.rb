class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_user_timezone

  def current_user
    if !User.find_by_id(session[:user_id])
      session[:user_id] = nil
    end
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
end
