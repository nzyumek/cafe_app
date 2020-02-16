Rails.application.routes.draw do
  resources :cafe_lists do
    resources :infos do
      member do
        get "sort"
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cafes do
  end
  
  root to: "home#index"
end
