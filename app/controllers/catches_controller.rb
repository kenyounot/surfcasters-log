class CatchesController < ApplicationController
    def new
        @catch = Catch.new
        @catch.build_log
    end

    def create
        
        @catch = Catch.new(catch_params)
        @catch.user_id = current_user.id
        
        if @catch.save
            redirect_to catch_path(@catch)
        else
            render :new
        end
    end




    private

    def catch_params
        params.require(:catch).permit(:species, :quantity, :weight, :length, :bait, log_attributes: [:start_date, :end_date, :location, :wind_direction, :wind_speed, :conditions, :precipitation, :water_clarity, :moon_phase, :air_temperature, :water_temperature, :barometer, :swell, :tide, :trip_rating, :comments])
    end

end
