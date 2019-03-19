class CollectionPoint < ApplicationRecord
    def assign_points(user_id)
        @user = User.where(id: user_id)
        @user.points+=10
        @user.save
    end
end
