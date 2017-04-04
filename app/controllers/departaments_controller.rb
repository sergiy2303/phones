class DepartamentsController < ApplicationController

  def show
    @departament = Departament.find(params[:id])
  end

  def new

  end

  def edit
    @organization = Organization.find(params[:organization_id])
    @departament = @organization.departaments.find(params[:id])
  end

  def create
    @organization = Organization.find(params[:organization_id])
    @departament = @organization.departaments.create(departament_params)
    redirect_to organization_path(@organization)
  end
  
  private 
    def departament_params
      params.require(:departament).permit(:departament_name, :departament_description)
    end
end
