class ChangeDataTypeForDetails < ActiveRecord::Migration[7.1]
  def change
    change_column :tasks, :details, :text
  end
end
