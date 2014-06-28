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

  private
  def mug_params
    params.require(:mug).permit(:company, :size)
  end

end