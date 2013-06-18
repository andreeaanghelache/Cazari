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

  #pagini guest
  match '/metodologie', :to => 'guest#metodologie.pdf'

  #pagini student
  match '/creeaza_cerere', :to => 'accommodations#new'
  match '/profil_student', :to => 'accommodations#student_profile'
  match '/rezultate_verificare', :to => 'accommodations#verified_results'
  match '/decizia_comisiei', :to => 'accommodations#decision'
  match '/documente', :to => 'accommodations#documents'

  #upload de documente
  match '/upload/handler', :to => 'upload#handler'

  #pagini manager
  match 'lista_cereri', :to => 'accommodations#index'
  match 'lista_punctaje', :to => 'accommodations#score_list'

  #pagini admin
  match 'lista_cereri_admin', :to => 'accommodations#admin_index'
  match 'stabileste_date', :to => 'accommodations#set_dates'
  match 'stabileste_camere', :to => 'accommodations#set_rooms'
  match 'stabileste_locuri', :to => 'accommodations#set_numbers'
  match 'istoric', :to => 'accommodations#session_list'
  match 'detalii_sesiune', :to => 'accommodations#session_show'
end
