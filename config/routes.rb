Rails.application.routes.draw do
  resources :collection_points
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => 'users#index'
  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      resources :users, only: :index 
      resources :collection_points, only: :index do
        collection do
          get :assign_points
        end
      end
    end
  end

end
