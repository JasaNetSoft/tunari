Rails.application.routes.draw do


  resources :menus
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get 'sessions/new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :carreras
  resources :users
  resources :proveidos
  resources :recepcions
  resources :enviars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
