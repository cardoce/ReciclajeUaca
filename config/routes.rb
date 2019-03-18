Rails.application.routes.draw do
  resources :collection_points
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api do
    namespace :v1 do
      resources :users, only: :index 
    end
  end

end
