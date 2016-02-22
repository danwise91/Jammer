class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def new
    @bands = Band.new
  end

  def show
    @band = Band.find(params[:id])
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to @band
    else
      render :action => 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
  def band_params
    params.require(:band).permit(:name, :description, :group_members, :genre, :shows )
  end

end
