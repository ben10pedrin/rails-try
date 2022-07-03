class RescuesController < ApplicationController
  def show
    @animal = Animal.find(params[:animal_id])
  end
  
  def new
    @animal = Animal.find(params[:animal_id])
  end
  
  def create
    @animal = Animal.find(params[:animal_id])
    @animal.address = Address.new(address_params)
    @animal.build_rescue(rescue_params)
    redirect_to animal_rescue_path(@animal)
  end
  
  private
    def rescue_params
      params.require(:rescue).permit(:date, :rescuers, :organization, :notes)
    end
    
    def address_params
      params.require(:rescue).permit(:municipality, :zip_code, :neighborhood, :street)
    end
end
