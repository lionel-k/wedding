Rails.application.routes.draw do
  devise_for :users
  scope '(:locale)', locale: /en|fr|hu|it/ do
    root to: 'pages#home'
    resources :rsvps, only: [:new]
    get '/gallery', to: 'gallery_pictures#index', as: 'gallery'
  end
  resources :rsvps, only: [:create]
end
