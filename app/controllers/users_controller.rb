class UsersController < ApplicationController
  load_and_authorize_resource

  def logs
    @logs = Log.where(student_number: current_user.student_number)
  end
end