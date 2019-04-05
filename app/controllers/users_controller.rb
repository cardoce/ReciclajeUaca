class UsersController < InheritedResources::Base
has_secure_password
  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :points, :firstname, :lastname)
    end
end

