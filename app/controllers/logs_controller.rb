class LogsController < ApplicationController

    def new
        @log = Log.new
        @log.build_catch
    end

    def create
        log_params[user_id: current_user.id]
        @log = Log.new(log_params)

        if @log.save!
            redirect_to log_path(@log)
        else
            render :new
        end
    end




    private

    def log_params
        params.require(:log).permit(:start_date, :end_date, :location, :wind_direction, :wind_speed, :conditions, :precipitation, :water_clarity, :moon_phase, :air_temperature, :water_temperature, :barometer, :swell, :tide, :trip_rating, :comments, catch_attributes: [:species, :weight, :length, :bait])
    end


end
