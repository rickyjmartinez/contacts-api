Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/my_recipe", controller: "recipes", action: "first_recipe"

  get "/first_contact", controller: "contacts", action: "get_first_contact"
end
