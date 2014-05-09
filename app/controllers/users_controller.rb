class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  def logs
    @logs = Log.where(student_number: current_user.student_number)
  end
  def update
    authorize! :assign_roles, @user if params[:user][:assign_roles]
  end
end
