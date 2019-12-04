class LogsController < ApplicationController
    def index
        if user_signed_in?
            @logs = User.find_by_id(current_user).logs
            render logs_path
        else
            redirect_to  new_user_session_path  
        end
    end

    def new
        @log = Log.new
    end

    def create
    end


end
