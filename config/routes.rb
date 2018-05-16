Rails.application.routes.draw do
  get 'main/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :servers
  # resources :players
  # resources :items
  # resources :creatures
  # resources :quests

  root 'main#index'
end
