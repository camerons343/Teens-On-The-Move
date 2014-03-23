class AddParentToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :parent, :string
    add_column :logs, :school_activity, :string
  end
end
