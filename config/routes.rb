Rails.application.routes.draw do
  resources :menu_items, only: [:index, :show]
  resources :categories, only: [:index, :show]
end
