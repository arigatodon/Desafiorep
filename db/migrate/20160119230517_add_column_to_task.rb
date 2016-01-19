class AddColumnToTask < ActiveRecord::Migration
  def change
    add_reference :tasks, :proyect, index: true, foreign_key: true
  end
end
