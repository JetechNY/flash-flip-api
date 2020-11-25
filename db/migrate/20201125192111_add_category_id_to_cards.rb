class AddCategoryIdToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :category_id, :integer
  end
end
