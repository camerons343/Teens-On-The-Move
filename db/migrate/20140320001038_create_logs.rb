class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :name
      t.integer :student_number
      t.string :time
      t.string :activity
      t.string :period
      t.string :adult
      t.boolean :school_activity
      t.string :date_of_activity
      t.belongs_to :user
      
      t.timestamps
    end
  end
end
