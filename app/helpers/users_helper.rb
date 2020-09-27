module UsersHelper

    def allow_admin_registration
        if admin?
            check_box_tag :is_admin, checked = false
        elsif current_user
        elsif User.all.detect(&:is_admin)
            check_box_tag :is_admin, checked = false
    end
end