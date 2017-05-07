class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all #array of hashes
    render "index.html.erb"
  end

  def show
    recipe_id = params[:id]
    @recipe = Recipe.find(recipe_id) #single hash
    render "show.html.erb"
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
