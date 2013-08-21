class PicturesController < ApplicationController

  def index
     @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id]) 
  end

  def new
    @picture = Picture.new
    # raise @picture.inspect
  end

  def create
    @picture = Picture.new params[:picture]
    if @picture.save
      redirect_to pictures_path
    else
      flash[:alert] = @picture.errors.full_messages
      render :new
    end
  end

end







