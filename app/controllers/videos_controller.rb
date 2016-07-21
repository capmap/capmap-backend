class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  before_action :error_on_bad_token, only: :index
  skip_before_filter :verify_authenticity_token

  def index
    if current_user
      @videos = current_user.videos
    else
      @videos = Video.all
    end
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video: params[:video], latitude: params[:latitude], longitude: params[:longitude], user: current_user)
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

    def error_on_bad_token
      if params[:sessionKey].present? && current_user == nil
        render text: 'Bad session token', status: '400'
      end
    end
end
