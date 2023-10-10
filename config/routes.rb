Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'

  devise_for :users,
    controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
    }
end