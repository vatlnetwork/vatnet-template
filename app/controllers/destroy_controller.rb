class DestroyController < ApplicationController
    def user
        user = User.find(current_user.id)
        user.destroy
    end
end
