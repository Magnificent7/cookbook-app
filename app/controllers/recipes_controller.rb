class RecipesController < ApplicationController
  def single_recipe
    @recipe = Recipe.first
    render "single_recipe.html.erb"
  end
end
