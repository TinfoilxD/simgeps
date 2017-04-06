Rails.application.routes.draw do
  get '/home', to: 'staticpage#home'
  get '/cio_raffle', to: 'staticpage#cio_raffle'
  get '/sim_raffle', to: 'staticpage#sim_raffle'
  
  root 'staticpage#home'

  resources :practitioners
  resources :sponsors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
