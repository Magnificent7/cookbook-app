class Recipe < ApplicationRecord

  belongs_to :user
  has_many :categorize_recipes
  has_many :categories, through: :categorize_recipes


  def ingredients_list
    return ingredients.split(", ")
  end

  def directions_list
    return directions.split(",")
  end

  def friendly_created_at
    created_at.strftime("%b %e, %l:%M %p")
  end

  def friendly_prep_time
    hours = prep_time/60
    minutes = prep_time % 60
    result = ""
    result += "#{hours} hour" if hours > 0
    result += " #{minutes} minutes" if minutes > 0
  end



end
