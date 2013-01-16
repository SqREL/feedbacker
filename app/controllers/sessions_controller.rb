class SessionsController < ApplicationController
  before_filter :redirect_to_feedbacks_if_logged, :except => [:destroy]

  def new
  end

  def create
    admin = Administrator.find_by_email(params[:email])
    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to feedbacks_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "Logged out!"
  end

end
