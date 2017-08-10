class AddUniqueIndexToDoses < ActiveRecord::Migration[5.1]
  def change
    add_index :doses, [:cocktail_id, :ingredient_id], unique: true
  end
end
