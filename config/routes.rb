Rails.application.routes.draw do
  devise_for :users
  scope '(:locale)', locale: /en|fr|hu|it/ do
    root to: 'pages#home'
    get '/rsvp', to: 'pages#rsvp', as: 'rsvp'
    get '/gallery', to: 'pages#gallery', as: 'gallery'
  end
end
