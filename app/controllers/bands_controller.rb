class BandsController < ApplicationController

def new
	@band = Band.new
end

def create
	@band = Band.new(band_params)
	if @band.save
		session[:band_id] = @band.band_id
		redirect_to user_path(@user)
	else
		redirect_to :back
end





private
def band_params
	params.require(:band).permit(:bname, :city, :state, :password, :contact_name, :email)
	
end
end





end