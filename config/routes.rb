Rails.application.routes.draw do
  resources :venuesocials
  resources :venuelocations
  resources :venues
  resources :reviews
  resources :messages
  resources :reservations
  resources :tickets
  resources :businesssocials
  resources :businesses
  resources :weventaddresses
  resources :wuserbusinesses
  resources :wusersocials
  resources :wusercontacts
  resources :wuserprofiles
  resources :wevents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
