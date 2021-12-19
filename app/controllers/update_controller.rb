class UpdateController < ApplicationController
    def username
        if params[:username]
            username = params[:username]
            user = User.find(current_user.id)
            user.username = username
            user.save
            redirect_to '/users/edit', notice: {t: '', b: 'Your username has been updated!', m: 'info'}
        end
    end
end