Rails.application.routes.draw do
  devise_for :users 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "creadit4u#index"

  resources :categories, only: :show do
    resources :products, controller: 'category_products', only: :show
  end

  resource :cart

  get '/order_list' => 'creadit4u#order_list'

  namespace :admin do
    root 'index#index'
    resources :categories
    resources :users
    resources :products
  end

  scope :path => '/api/v1/', :module => "api_v1", :as => 'v1', :defaults => { :format => :json } do 
	
  post "/login" => "auth#login"
  post "/logout" => "auth#logout"
	
	end

end
