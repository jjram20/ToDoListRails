Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "store#index"
  get "/purchaseMade", to: "store#purchase_made"
  post "/addItem", to: "store#add_item"
  post "/deleteItem", to: "store#delete_item"
  get "/visualizeInventory", to: "store#visualize_inventory"
  get "/chartjs", to: "store#chartjs"
end
