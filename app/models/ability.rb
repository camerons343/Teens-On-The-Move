class Ability
  include CanCan::Ability

  def initialize(user = current_user)
    alias_action :update, :destroy, :to => :modify
    user ||= User.new #Guest user
    if user.role? :admin
      can :manage, :all
    elsif user.role? :moderator
      can :update, Logs
    else
      can :modify, Logs, :student_number => user.student_number
      can :read, Logs
    end
  end
end
