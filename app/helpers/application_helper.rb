module ApplicationHelper
    def current_user #returns user object or nil
        if session[:user_id]
            user=User.find_by(id: session[:user_id])
        else
            user = nil
        end
        user 
    end

end
