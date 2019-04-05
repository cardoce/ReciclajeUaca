module Api
    module V1
      class AuthenticationController < Api::BaseController
        protect_from_forgery with: :null_session
        skip_before_action :authenticate_request
  
        def authenticate
          command = AuthenticateUser.call(params[:email], params[:password])
          if command.success?
            render json: { auth_token: command.result, user: command.user }
          else
            render json: { error: command.errors }, status: :unauthorized
          end
        end
      end
    end
  end
  