class LogsController < ApplicationController

    def index
        if user_signed_in?
            @logs = User.find_by_id(current_user.id).logs
        else
            redirect_to new_user_session_path
        end
    end

    def show
            log = Log.find_by_id(params[:id])
            if user_signed_in?
                if log.user_ids[0] == current_user.id
                    @log = log
                else
                    redirect_to logs_path
                end
            else
                redirect_to new_user_session_path
            end
    end
end
