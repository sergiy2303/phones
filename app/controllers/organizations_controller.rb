class OrganizationsController < ApplicationController

  def index
    @orgs = Organization.all
  end

  def new
  end


  def show
    @org = Organization.find(params[:id])
  end

  def create
    @org = Organization.new(org_params)
    if @org.save
      redirect_to organizations_path
    end
  end

  def edit
    @org = Organization.find(params[:id])
  end

  def update
    @org = Organization.find(params[:id])
    if @org.update(org_params)
      redirect_to organizations_path
    end
  end

  def destroy
    @org = Organization.find(params[:id])
    if @org.destroy
      redirect_to organizations_path
    end
  end

  private
    def org_params
      params.require(:organization).permit(:name, :address, :phone, :e_mail)
    end
end
