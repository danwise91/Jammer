class BandsController < ApplicationController
  def new
    @bands = Band.new
  end

  def show
    @band = Band.find(params[:id])
  end

  def create
    @band = Band.new(params[:id])

    if @band.save
      redirect_to @band
    else
      render :action => 'new'
  end
end



end
