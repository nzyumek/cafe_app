Rails.application.routes.draw do
  resources :infos
  resources :cafe_lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cafes do
  end
  
  root to: "home#index"
end
