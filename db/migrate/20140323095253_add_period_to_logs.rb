class AddPeriodToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :period, :string
  end
end
