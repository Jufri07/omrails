Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
    get '/signin', to: 'devise/sessions#new'
    get '/signout', to: 'devise/sessions#destroy'
    # delete "signout" => 'devise/sessions#destroy'
    get '/signup', to: 'devise/registrations#new'
  end


  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'about' => 'pages#about'
  get 'contact_us' => 'pages#contact_us'
end
