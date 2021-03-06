module Api
    module V1
      class CollectionPointsController < Api::BaseController
        skip_before_action :authenticate_request
  
        def index
          @collection_points = CollectionPoint.all
          render json: @collection_points
        end

        def assign_points
          @user = User.find_by(id: params[:user_id])
          @user.points += 10
          @user.save
          render json:  @user
        end
      end
    end
  end
  