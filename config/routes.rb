Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "swirls#index"
  resources :swirls
  resources :abouts
  get "stores/random", to: 'stores#random'
  resources :stores , shallow: true do
    resources :comments
  end
  resources :shares
  resources :users, only:[:new, :create]
  resources :sessions, only:[:new, :create, :destroy]

  get '/login', to: 'sessions#new'

end
