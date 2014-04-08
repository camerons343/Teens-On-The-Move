class DeviseCreateUsers < ActiveRecord::Migration
  def migrate(direction)
	super
	# Create a default user
	if direction == :up
		admin = User.new(
      first_name: 'Cameron',
      last_name: 'Smith',
      profile_name: 'camerons343',
      student_number: '110021',
			email: 'camerons343@gmail.com',
			password: 'camscott',
			role: 'admin',
		   )
			admin.save!
		end
	end
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      
      ## User
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.string :profile_name, null: false, default: ""
      t.string :student_number, null: false, default: ""
      
	    ## Roles
	    t.string :role,				null: false, default: ""
	  
      ## Recoverable
      ##t.string   :reset_password_token
      ##t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :users, :email,                unique: true
  end
end
