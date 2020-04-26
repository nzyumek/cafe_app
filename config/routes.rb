Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }
  get "users/show" => "users#show"
  
  get '/about' => 'about#index'
  get '/beans' => 'beans#index'
  
  resources :cafe_lists do
    collection do
      get 'search' => 'cafe_lists#search'
    end
  end

  scope 'cafe_lists/:id' do
    resources :reviews
  end
  #get '/cafe_lists/:id/reviews' => 'reviews#index'
  #get '/cafe_lists/:id/reviews' => 'reviews#show'
  #post '/cafe_lists/:id/reviews' => 'reviews#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  root to: "home#index"
end
