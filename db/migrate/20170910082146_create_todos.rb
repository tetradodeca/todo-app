class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :list
      t.references :taskslist, foreign_key: true

      t.timestamps
    end
  end
end
