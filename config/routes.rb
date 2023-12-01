Rails.application.routes.draw do
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: redirect('/home')

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'admin_index', to: 'articles#admin_index'
  resources :articles
end
