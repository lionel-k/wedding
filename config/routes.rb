Rails.application.routes.draw do
  devise_for :users
  scope '(:locale)', locale: /en|fr|hu|it/ do
    root to: 'pages#home'
    get '/gallery', to: 'pages#gallery', as: 'gallery'
    resources :rsvps, only: [:new]
  end
  resources :rsvps, only: [:create]
end
