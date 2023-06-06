Rails.application.routes.draw do
  devise_for :models
  devise_for :controllers
  devise_for :views
  devise_for :users do
    get 'logout' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "books#index"
  

  resources  :books do
    resources :reviews
  end
end
