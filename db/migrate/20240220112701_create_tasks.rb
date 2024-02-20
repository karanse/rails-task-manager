class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :details
      t.string :completed

      t.timestamps
    end
  end
end
