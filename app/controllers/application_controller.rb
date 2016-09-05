class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def logged_in_user
    redirect_to login_url, notice: 'Please login to continue' unless current_user.present?
  end

  def admin_user
    redirect_to root_url, notice: 'You dont have permission' unless current_user.present? && current_user.admin
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
