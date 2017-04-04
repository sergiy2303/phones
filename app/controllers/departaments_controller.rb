class DepartamentsController < ApplicationController

  def show
    @departament = Departament.find(params[:id])
  end

  def new
    @organization = Organization.find(params[:organization_id])
  end

  def edit
    @organization = Organization.find(params[:organization_id])
    @departament = @organization.departaments.find(params[:id])
  end

  def create
    @organization = Organization.find(params[:organization_id])
    
    if @departament = @organization.departaments.create(departament_params)
      redirect_to organization_path(@organization)
    end
  end

  def update
    @organization = Organization.find(params[:organization_id])
    @departament = @organization.departaments.find(params[:id])
    
    if @departament.update(departament_params)
      redirect_to organization_path(params[:organization_id])
    end
  end

  def destroy
    @organization = Organization.find(params[:organization_id])
    @departament = @organization.departaments.find(params[:id])

    if @departament.destroy
      redirect_to organization_path(params[:organization_id])
    end
  end

  private 
    def departament_params
      params.require(:departament).permit(:departament_name, :departament_description)
    end
end
