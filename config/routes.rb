OmniauthRails::Application.routes.draw do

  #the callback for the authentication response from ADFS
  match '/auth/saml_rstr/callback', :to => 'sessions#create'
  match '/login', :to => redirect('/auth/saml_rstr')
  match '/auth/failure', :to => "sessions#failure"

  root :to => 'welcome#index'
 end
