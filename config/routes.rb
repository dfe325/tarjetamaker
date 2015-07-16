Rails.application.routes.draw do
  root 'cards#index'

  devise_for :users

  resources :cards

  get 'cards/:id' => 'cards#show'

end
