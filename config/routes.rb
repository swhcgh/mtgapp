Rails.application.routes.draw do
  resources :contenders
  resources :pairings
  resources :decks
  resources :cards
  get 'tournaments/begintournament' => 'tournaments#begintournament'
  get 'tournaments/getpairings' => 'tournaments#getpairings'
  get 'tournaments/reportround' => 'tournaments#reportround'
  resources :tournaments
  resources :users
  root 'tournaments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
