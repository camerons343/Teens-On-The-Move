class User < ActiveRecord::Base
	ROLES = %w(admin)
	  def role?(base_role)
		return false unless role.present?
			ROLES.index(base_role.to_s) >= ROLES.index(role)
		end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable, :recoverable, 
		 :rememberable, :trackable, :validatable
		 
end
