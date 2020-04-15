Rails.application.routes.draw do
  devise_for :users
  get '/about' => 'about#index'
  get '/beans' => 'beans#index'
  resources :cafe_lists do
    collection do
      get 'search' => 'cafe_lists#search'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  root to: "home#index"
end
