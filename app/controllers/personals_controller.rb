class PersonalsController < ApplicationController

  def index
    @personals = Personal.all
  end

  def show
    if @personal = Personal.find(params[:id]) == nil
      redirect_to  new_organization_departament_personal(params)
    else 
      @personal = Personal.find(params[:id])
    end
  end

  def new
    @organization = Organization.find(params[:organization_id])
    @departament = Departament.find(params[:departament_id])
  end

  def create
    @organization = Organization.find(params[:organization_id])
    @departament = Departament.find(params[:departament_id])
    @personal = Personal.create(personal_params)
    redirect_to organizations_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
    def personal_params
      params.require(:personal).permit(:full_name)
    end
end
