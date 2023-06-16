Rails.application.routes.draw do
  devise_for :users
  resources :car_details
  root "car_details#index"
  get 'home/index', to: "home#index"
  get '/single_car/:id', to: "home#single_car"
  get '/send_offer_mail_request/:id', to: "car_details#send_offer_email"
  get '/send_offer_mail_request_offer/:id', to: "car_details#send_offer_mail_request_offer"

  
  get '/admin', to: "admin#index"


  post "/show_only_sold_out", to: "car_details#show_only_sold_out"

  post "/update_commission", to: "car_details#update_commission"


  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
