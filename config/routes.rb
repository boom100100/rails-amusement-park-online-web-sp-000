Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "welcome#home"
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout' => 'sessions#destroy'
  resources :users, only: [:new, :create, :show]
  resources :attractions, only: [:index, :show]
end
