Rails.application.routes.draw do
  resources :shopping_items
  resources :shopping_lists
  root "shopping_lists#index"
end
