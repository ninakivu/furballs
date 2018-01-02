Rails.application.routes.draw do
  root 'kitties#index'
  get '/kitties' => 'kitties#index'
  get '/kitties/new' => 'kitties#new'
  get '/kitties/:id' => 'kitties#show'
end
