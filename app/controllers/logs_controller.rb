class LogsController < ApplicationController
    def show
        @log = Log.find_by_id(params[:id])
    end
end
