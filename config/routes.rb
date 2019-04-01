Rails.application.routes.draw do
  devise_for :users
  resources :gas_stations, except: :destroy
  root to: 'gas_stations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
