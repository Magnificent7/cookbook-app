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

  def new
    render "new.html.erb"
  end

  def create
    @new_recipe = Recipe.create(
      title: params[:title], 
      chef: params[:chef],
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time]
      )
    render "create.html.erb"
  end

  def edit
    @recipe = Recipe.find(params[:id]) #single hash
    render "edit.html.erb"
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.update(
      title: params[:title], 
      chef: params[:chef],
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time]
      )
    render "update.html.erb"
  end

end








