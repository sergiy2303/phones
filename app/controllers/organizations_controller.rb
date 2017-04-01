class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to organizations_path
    end
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update(organization_params)
      redirect_to organizations_path
    end
  end

  def destroy
    @organization = Organization.find(params[:id])
    if @organization.destroy
      redirect_to organizations_path
    end
  end

  private
    def organization_params
      params.require(:organization).permit(:name, :address, :phone, :email)
    end
end
