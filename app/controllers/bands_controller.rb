class BandsController < ApplicationController
	def index
		@bands = Band.all
	end

	def show
		@band = Band.find(params[:id])
		@video = @band.video
	end

	def new
	@band = Band.new
	end

	def create
		@band = current_user.bands.new(band_params)
		if @band.save
		redirect_to band_path(@band.id)
		else
		redirect_to :back
	end
end

	def edit
	@band = Band.find(params[:id])
	end

	def update
		@band = Band.find(params[:id])
		if @band.update(band_params)
			redirect_to band_path(@band)
		else
			redirect_to user_path(current_user)
		end
	end
	
	def destroy
 	@band = Band.find(params[:id])
 	@band.delete
 	flash[:notice] = "Band Deleted!"
 	redirect_to user_path(current_user) 
	end	


private
def band_params
	params.require(:band).permit(:bname, :city, :state, :email, :avatar, :mp3, :track, :genre, :bio, :influences, :user_id)
	
end






end