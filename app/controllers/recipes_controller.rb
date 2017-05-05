class RecipesController < ApplicationController
  def single_recipe
    @recipe = Recipe.first
    render "single_recipe.html.erb"
  end

  def new_recipe_form
    render "new_recipe_form.html.erb"
  end

  def new_recipe_result
    @new_recipe = Recipe.create(
      title: params[:recipe_title], 
      chef: params[:recipe_chef]
      )
    render "new_recipe_result.html.erb"
  end
end
