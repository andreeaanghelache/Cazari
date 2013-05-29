Cazari::Application.routes.draw do
  resources :dormitories
  resources :dormitory_categories
  resources :documents
  resources :accommodations

  root :to => 'accommodations#index'

  #omniauth
  match '/auth/:provider/callback', :to => 'user_sessions#create'
  match '/auth/failure', :to => 'user_sessions#failure'

  #logout
  match '/logout', :to => 'user_sessions#destroy'
end
