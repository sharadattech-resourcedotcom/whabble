Rails.application.routes.draw do
  get 'home/welcome'

  get 'home/createevent'

  get 'home/searchevents'

  get 'home/updateprofile'

  get 'home/createvenue'

  get 'home/createbusiness'

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
  root to: 'home#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
