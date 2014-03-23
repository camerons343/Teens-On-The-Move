class RemoveParentFromLogs < ActiveRecord::Migration
  def change
    remove_column :logs, :parent, :string
	add_column :logs, :adult, :string
  end
end
