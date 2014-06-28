class MugsController < ApplicationController

  def index
    @mug = Mug.new
    @mugs = Mug.all
  end

  def create
    @mug = Mug.new(mug_params)
    if @mug.save

      redirect_to mugs_path
    else
      render :index
    end
  end

  def show
    @mug = Mug.find(params[:id])
  end

  def edit
    @mug = Mug.find(params[:id])
  end

  def update
    @mug = Mug.find(params[:id])
    @mug.update_attributes!(mug_params)

    redirect_to mugs_path
  end

  private
  def mug_params
    params.require(:mug).permit(:company, :size)
  end

end