module ApplicationHelper
    def current_user #returns user object or nil
        if session[:user_id]
            @c_user ||= User.find_by(id: session[:user_id])
        else
            @c_user = nil
        end
        @c_user  
    end

end
