Rails.application.routes.draw do
  devise_for :users 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories, only: :show do
    resources :products, controller: 'category_products', only: :show do
      post 'add', on: :member
      resources :comments, controller: 'product_comments', only: :create
    end
    resources :comments, controller: 'category_comments', only: :create
  end

  resource :cart
  resources :orders, only: [:index, :new, :create, :show] do
    post :checkout, on: :member
  end
 
  post 'pay2go/return' => 'pay2go#callback'
  post 'pay2go/notify' => 'pay2go#notify'
  get  '/profile' => 'creadit4u#profile'
  post '/user_cards' => 'creadit4u#user_cards'
  post "/creadit4u/bulk_delete" => "creadit4u#bulk_delete", as: :bulk_delete_creadit4u


  namespace :admin do
    root 'index#index'
    resources :categories
    resources :users
    resources :products do
      post 'export', on: :collection
    end
    resources :orders, except: [:new, :create]
  end

  scope :path => '/api/v1/', :module => "api_v1", :as => 'v1', :defaults => { :format => :json } do 
  
  post "/login" => "auth#login"
  post "/logout" => "auth#logout"
  
  end

  root to: "creadit4u#index"
end
