class CampersController < ApplicationController
    before_action :set_camper, except: [:index, :create]
    def index
        render json: Camper.all, status: :ok
    end

    def show
        render json: @camper, status: :ok, serializer: CamperActivitiesSerializer
    end

    def create
        render json: Camper.create!(camper_params), status: :created
    end

    private

    def set_camper
        @camper = Camper.find(params[:id])
    end

    def camper_params
        params.permit(:name, :age)
    end
end
