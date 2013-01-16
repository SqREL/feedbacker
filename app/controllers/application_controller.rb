class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @current_user ||= Administrator.find(session[:admin_id]) if session[:admin_id]
  end

  def redirect_to_feedbacks_if_logged
    redirect_to feedbacks_path if current_user
  end

  helper_method :current_user
end
