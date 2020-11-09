Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles

  resources :events

  root 'welcome#index'
end
