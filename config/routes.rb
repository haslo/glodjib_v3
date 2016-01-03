Rails.application.routes.draw do

  root 'angular_applications#show'

  devise_for :users, controllers: { sessions: 'devise_overrides/sessions' }

  namespace :v1 do
    resources :images, only: [ :index, :show, :create, :update, :destroy ]
  end

end
