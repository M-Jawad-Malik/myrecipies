Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get 'pages/home',to: 'pages#home'
  get '/signup',to: 'chefs#new'
  resources :recipes
  resources :chefs
  # Defines the root path route ("/")
  # root "articles#index"
  get '/login',to:'sessions#new'
  post '/login',to:'sessions#create'
  delete '/logout',to:'sessions#destroy'

  resources :ingredients,except: [:destroy]

end
