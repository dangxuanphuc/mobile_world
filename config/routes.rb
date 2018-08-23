Rails.application.routes.draw do
  root "static_pages#home"
  get "phone", to: "static_pages#phone"
  get "tablet", to: "static_pages#tablet"
  get "laptop", to: "static_pages#laptop"
  get "accessory", to: "static_pages#accessory"
  get "sale", to: "static_pages#sale"
  get "payment", to: "static_pages#payment"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/manager", to: "users#manager"
  get "/products", to: "products#index"
  post "/cart_items", to: "cart_items#create"
  delete "/carts", to: "carts#destroy"
  get "/carts", to: "carts#index"
  get "/myreceipt", to: "receipts#new"
  post "/myreceipt", to: "receipts#create"
  get "/receipts", to: "receipts#index"
  get "/search", to: "search#index"

  post "/cart_items/add", to: "cart_items#add_quantity"
  post "/cart_items/reduce", to: "cart_items#reduce_quantity"
  delete "/cart_items/delete", to: "cart_items#destroy"

  post "/rate", to: "rater#create"

  get "/dashboard", to: "chats#index"

  resources :users
  resources :carts
  resources :products
  resources :receipts
  resources :chats
  resources :chatrooms
end
