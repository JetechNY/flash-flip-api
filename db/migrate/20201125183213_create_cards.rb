class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :term
      t.string :definition
      t.boolean :is_starred

      t.timestamps
    end
  end
end
