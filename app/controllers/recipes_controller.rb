class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all #array of hashes
    sort_attribute = params[:sort]
    if sort_attribute
      @recipes = Recipe.all.order(sort_attribute)
    end
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
    new_recipe = Recipe.create(
      title: params[:title], 
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time],
      user_id: current_user.id
      )
    flash[:success] = "Recipe successfully created!"
    redirect_to "/recipes/#{new_recipe.id}"
  end

  def edit
    @recipe = Recipe.find(params[:id]) #single hash
    render "edit.html.erb"
  end

  def update
    recipe = Recipe.find(params[:id])

    recipe.update(
      title: params[:title], 
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time]
      )
    flash[:info] = "Recipe successfully updated!"
    redirect_to "/recipes/#{recipe.id}"
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    flash[:danger] = "Recipe successfully deleted!"
    redirect_to "/recipes"
  end

  def search
    search_text = params[:search]
    @recipes = Recipe.where("title LIKE ? OR chef LIKE ?", "%#{search_text}%","%#{search_text}%")
    render "index.html.erb"
  end

end








