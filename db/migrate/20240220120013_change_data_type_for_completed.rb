class ChangeDataTypeForCompleted < ActiveRecord::Migration[7.1]
  def change
    change_column :tasks, :completed, :boolean
  end
end
