Rails.application.routes.draw do
  resources :registrations
  resources :ouizzusers
  resources :events
  get 'home/index'
  root 'home#index'
<<<<<<< HEAD
  post 'events/:id/register' => 'events#register'
=======
  post 'events/:id/registrate' => 'events#registrate'
>>>>>>> master

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
