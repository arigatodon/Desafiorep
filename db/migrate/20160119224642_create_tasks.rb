class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.user :references

      t.timestamps null: false
    end
  end
end
