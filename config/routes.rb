Rails.application.routes.draw do
  # root is the homepage, whatever we want to display (/ = always the route)
  root 'kitties#index'

  # list all kitties
  get '/kitties' => 'kitties#index', as: :kitties

  # display a form to save a kitty
  get '/kitties/new' => 'kitties#new', as: :new_kitty

  # display details for a specific kitty
  get '/kitties/:id' => 'kitties#show', as: :kitty

  # save kitty to database
  post '/kitties' => 'kitties#create'

  # display form to edit kitty info
  get '/kitties/:id/edit' => 'kitties#edit', as: :kitty_edit

  # save edited kitty info to database
  patch '/kitties/:id' => 'kitties#update'

  # remove kitty info from database
  delete 'kitties/:id' => 'kitties#destroy'
end
