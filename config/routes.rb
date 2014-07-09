Rails.application.routes.draw do
  # Home Route
  get '/' => 'home#index', as: "home"

  # User, Shows Routes
  resources :users, :shows

  # Login and Logout Sessions
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


end
