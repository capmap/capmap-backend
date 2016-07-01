class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video: params[:video], latitude: params[:latitude], longitude: params[:longitude])
    if @video.save
      redirect_to @video
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

    def set_video
      @video = Video.find(params[:id])
    end
end
