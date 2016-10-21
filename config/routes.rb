Rails.application.routes.draw do
  resources :events
  get 'home/index'
  root 'home#index'
  post 'events/:id/registrate' => 'events#registrate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
