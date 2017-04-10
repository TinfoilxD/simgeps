Rails.application.routes.draw do
  get '/config', to: 'staticpage#config'

  get '/home', to: 'staticpage#home'
  get '/cio_raffle', to: 'staticpage#cio_raffle'
  post '/cio_raffle_get_winners', to: 'staticpage#cio_raffle_get_winners'
  get '/sim_raffle', to: 'staticpage#sim_raffle'
  get '/practitioners', to: 'practitioners#index'
  get '/sponsors', to: 'sponsors#index'     
  root 'staticpage#home'

  resources :practitioners
  resources :sponsors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
