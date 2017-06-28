class Category < ApplicationRecord
  has_many :categorize_recipes
  has_many :recipes, through: :categorize_recipes
end
