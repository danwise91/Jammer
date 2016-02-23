class BandsMembersController < ApplicationController
  def index
    @bandsmembers = BandsMembers.all
  end

  def new
    @bandsmember = BandsMembers.new
  end

  def show
    @bandsmembers = BandsMembers.find(params[:id])
  end

  def create
    @bandsmember = BandsMembers.new(bandsmembers_params)
    if bandsmember.save
      redirect_to @bandsmember
    else
      render :action => 'new'
    end
  end

end
