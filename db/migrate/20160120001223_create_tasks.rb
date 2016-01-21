class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :state
      t.references :user, index: true, foreign_key: true
      t.references :proyect, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
