Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    
    get '/' => 'top#index'
    resources :shops do
      
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  root 'shop#index'
end