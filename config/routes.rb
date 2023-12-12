Rails.application.routes.draw do
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: redirect('/home')

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'admin_index', to: 'articles#admin_index'
  get '/404', to: 'errors#not_found'
  get '/406', to: 'errors#unacceptable'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'
  resources :articles
end
