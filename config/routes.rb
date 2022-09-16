Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "carbon_emissions#index"

  post "/carbon_emissions", controller: "carbon_emissions", action: "index"
end
