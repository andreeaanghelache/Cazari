Cazari::Application.routes.draw do
  resources :dormitories
  resources :dormitory_categories
  resources :documents
  resources :accommodations

  root :to => 'guest#index'

  #omniauth
  match '/auth/:provider/callback', :to => 'user_sessions#create'
  match '/auth/failure', :to => 'user_sessions#failure'

  #logout
  match '/logout', :to => 'user_sessions#destroy'

  match '/creeaza_cerere', :to => 'accommodations#new'
  match '/profil_student', :to => 'accommodations#student_profile'
  match '/rezultate_verificare', :to => 'accommodations#verified_results'
  match '/decizia_comisiei', :to => 'accommodations#decision'
end
