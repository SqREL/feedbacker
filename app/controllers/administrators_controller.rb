class AdministratorsController < ApplicationController
  before_filter :redirect_to_feedbacks_if_logged

  def new
    @administrator = Administrator.new
  end

  def create
    @administrator = Administrator.new(params[:administrator])
    if @administrator.save!
      redirect_to signin_path, :notice => "Signed up!"
    else
      render "new"
    end
  end

end
