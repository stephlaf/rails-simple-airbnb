class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flats = Flat.new
  end

  def create
    @flats = Flat.new(flats_params)

    if @flats.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def flats_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests )
  end
end
