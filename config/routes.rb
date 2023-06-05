Rails.application.routes.draw do
  resources :car_details
  root "car_details#index"
  get 'home/index', to: "home#index"
  get '/single_car/:id', to: "home#single_car"
  get '/send_offer_mail_request/:id', to: "car_details#send_offer_email"

  get '/admin', to: "admin#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
