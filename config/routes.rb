Rails.application.routes.draw do
  resources :contenders
  resources :pairings
  resources :decks
  resources :cards
  resources :tournaments
  resources :users
  get 'tournaments/begintournament' => 'tournaments#begintournament'
  root 'tournaments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
