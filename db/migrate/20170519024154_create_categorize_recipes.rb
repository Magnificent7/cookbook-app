class CreateCategorizeRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :categorize_recipes do |t|
      t.integer :recipe_id
      t.integer :category_id

      t.timestamps
    end
  end
end
