Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/new'

  get 'comments/edit'

  # get 'users/index'

  # get 'users/new'

  # get 'users/edit'

  # get 'articles/index'

  # get 'articles/edit'
  
  # post 'articles/new'

  # get 'articles/show'

  # ROUTE STANDARD

  # get 'articles/edit', to: "articles#edit", as: :articles
  # ------------------------------------------------------

  get "sign_up" => "users#new", :as => "sign_up"
  # get "login" => "session#new", :as => "login"
  get 'users/show' 
  
  resources :users
  resources :sessions

  # RESTFULL ROUTE
  root :to => "articles#index" 
  resources :articles

  resources :comments
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
