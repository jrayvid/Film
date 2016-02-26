class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  # GET /videos
  def index
   
    @band = Band.find(params[:band_id])
    @videos = @band.videos
  end

  # GET /videos/1
  def show
    @band = Band.find(params[:band_id])
  end

  # GET /videos/new
  def new
    @video = Video.new
    @band = Band.find(params[:band_id])
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  def create
    @band = Band.find(params[:band_id])
    @video = @band.videos.build(video_params)
    @video.user_id = current_user.id
    if @video.save
      redirect_to band_video_path(@band, @video), notice: 'Video was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /videos/1
  def update
    if @video.update(video_params)
      redirect_to @video, notice: 'Video was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /videos/1
  def destroy
    @video = Video.find(params[:id])
    @band = Band.find(params[:band_id])
    @video.destroy
    redirect_to band_path, notice: 'Video was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def video_params
      params.require(:video).permit(:title, :band_id, :url)
    end
end
