Rails.application.routes.draw do
  root "characters#index"

  resources :characters

  resources :rooms
end
