class CompaniesController < ApplicationController
    before_action :find_company, only: [:show, :edit, :update]
    def index
        @companies = Company.all
    end

    def show
        
    end

    def edit

    end

    def new
        @company = Company.new
    end

    def create
        @company = Company.create(company_params)
        redirect_to company_path(@company)
    end

    def update
        @company.update(company_params)
        
        redirect_to company_path(@company)
    end

    private

    def company_params
        params.require(:company).permit!
        # params.require(:company).permit(:name)
    end

    def find_company
        @company = Company.find(params[:id])
    end
end