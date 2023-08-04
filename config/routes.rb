Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/my_recipe", controller: "recipes", action: "first_recipe"

  get "/contacts/:id", controller: "contacts", action: "show"

  get "/contacts", controller: "contacts", action: "index"

  post "/contacts" => "contacts#create"
end
