class ApplicationController < ActionController::Base
    private
        def current_user
            if session[:login_student_num]
                User.find_by(uid: session[:login_student_num])
            end
        end
    helper_method :current_user
end
