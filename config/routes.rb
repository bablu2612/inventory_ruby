Rails.application.routes.draw do
  resources :car_details
  root "car_details#index"
  get 'home/index', to: "home#index"
  get '/single_car', to: "home#single_car"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
