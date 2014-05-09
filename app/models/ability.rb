class Ability
  include CanCan::Ability

  def initialize(user = current_user)
    user ||= User.new #Guest user
    if user.role? :admin
      can :manage, :all
    elsif user.role? :moderator
      can :update, Logs
    else
      can :manage, Logs, :student_number => current_user.student_number
    end
  end
end
