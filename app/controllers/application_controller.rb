class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    before_action :verify_login
    before_action :redirect_ifloggedin
    before_action :get_current_status

    def verify_login
        return if request.controller_class.to_s.include? "Devise"
        return if request.controller_class.to_s.include? "Login"
        if user_session.nil?
            redirect_to '/login/sessions?notice=true&t=&b=Please select a session or create a new session to continue!&m=info'
        else
            return
        end
    end

    def redirect_ifloggedin
        if ! user_session.nil?
            redirect_to root_path if request.controller_class.to_s.include? "Login"
        end
    end

    def get_current_status
        return if user_session.nil?
        user = User.find(current_user.id)
        if ! user.status
            user.status = 'enabled'
            user.save
        end
        if ! user.perm
            user.perm = 'user'
            user.save
        end
        if ! user.username
            user.username = 'User'
            user.save
        end
        if ! User.find_by_perm('admin')
            user.perm = 'admin'
            user.save
        end
        if user.status != 'enabled'
            sign_out_and_redirect(current_user)
            flash.notice = 'Account Disabled!'
        end
    end
end