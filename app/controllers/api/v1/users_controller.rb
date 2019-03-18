module Api
    module V1
      class UsersController < Api::BaseController
        skip_before_action :authenticate_request
  
        def index
          @users = User.all
          render json: @users
        end
      end
    end
  end
  