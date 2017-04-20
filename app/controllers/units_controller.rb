class UnitsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(unit_params)
    @unit.organization = organization
    @unit.departament = departament
    if @unit.save
      redirect_to organization_departament_units_path(organization, departament.id)
    end
  end

  def edit
  end

  def update
    if unit.update(unit_params)
      redirect_to organization_departament_units_path(organization, departament.id)
    end
  end

  def destroy
    if unit.destroy
      redirect_to organization_departament_units_path(organization, departament.id)
    end
  end

  private
  def unit_params
    params.require(:unit).permit(:full_name)
  end

  def units
    @units ||= departament.units
  end
  helper_method :units

  def unit
    @unit ||= departament.units.find(params[:id])
  end
  helper_method :unit
end
