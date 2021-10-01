Rails.application.routes.draw do
  mount ActionCable.server => "/cable"


  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show, :index]
    resources :bets
    resources :notifications, only: [:index]
  end

  devise_for :users,
    defaults: { format: :json },
    path: '',
    path_names: {
      sign_in: 'api/login',
      sign_out: 'api/logout',
      registration: 'api/signup'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }
end
