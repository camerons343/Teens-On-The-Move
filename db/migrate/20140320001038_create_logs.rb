class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :name
      t.string :student_number
      t.string :time
      t.string :activity

      t.timestamps
    end
  end
end
