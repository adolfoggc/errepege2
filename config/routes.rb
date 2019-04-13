Rails.application.routes.draw do
  resources :dnd_players
  get 'site/index'
  get 'site/not_found'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'site#index'

end
