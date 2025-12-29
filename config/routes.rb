Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  devise_for :admins
  devise_scope :admin do
    post '/admins/sign_as_demo' => 'admins/sessions#sign_as_demo'
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end
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
