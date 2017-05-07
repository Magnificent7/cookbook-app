Rails.application.routes.draw do

  get "/" => "recipes#index"
  get "/recipes" => "recipes#index"

  get "/recipes/:id" => "recipes#show"

  get "/new_recipe_form" => "recipes#new_recipe_form"
  post "/new_recipe_result" => "recipes#new_recipe_result"

end
