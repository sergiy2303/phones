class LinesController < ApplicationController

  def index
    @lines = Line.all
  end

  def new
  end

  def show 
    @line = Line.find(params[:id])
  end

  def create
    if @line = Line.new(line_params).save
      redirect_to lines_path
    end
  end

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(line_params)
      redirect_to @line
    else
      render 'edit'
    end
  end

  private
    def line_params
      params.require(:line).permit(:rec)
    end
end
