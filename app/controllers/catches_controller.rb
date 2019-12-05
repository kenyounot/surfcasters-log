class CatchesController < ApplicationController
    def new
        @catch = Catch.new
        @catch.build_log
    end

    def create
        @catch = Catch.new(catch_params)
        @catch.user_id = current_user.id
        
        if @catch.save
            redirect_to logs_path
        else
            render :new
        end
    end

    def index
        if user_signed_in?
            @catches = User.find_by_id(current_user.id).catches
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




    private

    def catch_params
        params.require(:catch).permit(:species, :quantity, :weight, :length, :bait, log_attributes: [:start_date, :end_date, :location, :wind_direction, :wind_speed, :conditions, :precipitation, :water_clarity, :moon_phase, :air_temperature, :water_temperature, :barometer, :swell, :tide, :trip_rating, :comments])
    end

end
