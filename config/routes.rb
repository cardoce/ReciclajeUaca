Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :users

  namespace :api do
    namespace :v1 do
      resources :users, only: :index 
    end
  end

end
