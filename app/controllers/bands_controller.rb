class BandsController < ApplicationController

	def show
	@band = Band.find(params[:id])
	end

	def new
	@band = Band.new
	end

	def create
		@band = Band.new(band_params)
		if @band.save
		redirect_to band_path(@band.id)
		else
		redirect_to :back
		end
	end




private
def band_params
	params.require(:band).permit(:bname, :city, :state, :email, :avatar)
	
end






end