Rails.application.routes.draw do
  root "shopping_lists#index"
  resources :shopping_lists do
    member do
      resources :shopping_items 
    end
  end
end

