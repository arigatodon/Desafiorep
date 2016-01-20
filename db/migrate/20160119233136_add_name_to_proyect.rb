class AddNameToProyect < ActiveRecord::Migration
  def change
    add_column :proyects, :name, :string
  end
end
