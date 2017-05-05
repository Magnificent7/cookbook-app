Rails.application.routes.draw do
  get "/single_recipe" => "recipes#single_recipe"

  get "/new_recipe_form" => "recipes#new_recipe_form"
  post "/new_recipe_result" => "recipes#new_recipe_result"
  
end
