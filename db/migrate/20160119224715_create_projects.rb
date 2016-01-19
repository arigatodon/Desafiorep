class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.user :references
      t.tasks :references

      t.timestamps null: false
    end
  end
end
