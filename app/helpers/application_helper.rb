module ApplicationHelper
    def has_permission(permission)
        if UserPermission.where(user_id: current_user.id).find_by_permission(permission)
            return true
        else
            return false
        end
    end
end
