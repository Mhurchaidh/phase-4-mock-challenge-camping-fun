class ActivitiesController < ApplicationController
    def index
        render json: Activity.all, status: :ok
    end

    def destroy
        Activity.find(params[:id]).destroy
        head :no_content
    end
end
