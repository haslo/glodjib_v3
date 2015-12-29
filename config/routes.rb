Rails.application.routes.draw do

  devise_for :users
  root 'angular_applications#show'

  #devise_for :user, controllers: { sessions: 'devise_overrides/sessions' }

  namespace :v1 do
    resources :images
  end

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
