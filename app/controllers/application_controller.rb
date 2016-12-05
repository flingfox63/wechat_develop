class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :auth_user!

  private

  def auth_user!
    redirect_to '/auth/wechat' unless current_user
  end

  def current_user
    @__user ||= User.find_by_uid(session[:uid])
  end

  def set_current_user(user)
    session[:uid] = user.uid
  end
end
