Rails.application.routes.draw do
  resources :catches
  resources :logs
  devise_for :users
  root to: 'application#welcome'
end
