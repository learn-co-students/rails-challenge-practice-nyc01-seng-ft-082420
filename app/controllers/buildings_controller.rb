class BuildingsController < ApplicationController
before_action :find_building, only: [:show, :edit, :update]
    def index
        @buildings = Building.all
    end

    def show
        
    end

    def edit

    end

    def new
        @building = Building.new
    end

    def create
        @building = Building.create(building_params)

        redirect_to building_path(@building)
    end

    def update
        @building.update(building_params)
        
        redirect_to building_path
    end

    private

    def building_params
        params.require(:building).permit!
    end

    def find_building
        @building = Building.find(params[:id])
    end
end