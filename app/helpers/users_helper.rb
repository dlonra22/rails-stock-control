module UsersHelper
    
    def allow_admin_registration
        if User.all
            check_box_tag :is_admin, checked = true
        else
            check_box_tag :is_admin, checked = false
        end
    end
end