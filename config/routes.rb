Rails.application.routes.draw do
  get "/single_recipe" => "recipes#single_recipe"
end
