Rails.application.routes.draw do
  
  resources :beantags
  resources :cafe_list_cashlesstags
  resources :cashlesstags
  #get 'inquiry' => 'inquiry#index'
  post 'inquiry/confirm' => 'inquiry#confirm'
  post 'inquiry/thanks' => 'inquiry#thanks'
  
  resources :news
  namespace :admins do
    resources :cafe_lists
    resources :users
  end
  
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get "users/show" => "users#show"
  
  get '/about' => 'about#index'
  get '/beans' => 'beans#index'
  
  resources :cafe_lists do
    collection do
      get 'search' => 'cafe_lists#search'
    end
    resources :reviews do
    end
    # TODO 0426
    # ここに:reviewsのresourcesを追加
    # 変更したらconsoleでrails routesで確認
    # 一部のコントローラーでparamsの値が変わったことによる対応が必要なことに注意
  end
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

# TODO 0426
# ここから削除
  #scope 'cafe_lists/:id' do
    #resources :reviews
  #end
# ここまで削除

  #get '/cafe_lists/:id/reviews' => 'reviews#index'
  #get '/cafe_lists/:id/reviews' => 'reviews#show'
  #post '/cafe_lists/:id/reviews' => 'reviews#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  root to: "home#index"
end
