class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @arts = current_user.artists
  end

  def show
  end

  def new
    @art = Artist.new
    render :template => "artists/_form"
  end

  def create
    @art = current_user.artists.new(artist_params)

    if @art.save
      redirect_to artists_path
    else
      render :new
    end
  end
  
  def edit
    render :template => "artists/_form"
  end

  def update
    if @art.update(artist_params)
      redirect_to artist_path(@art)
    else
      render :edit
    end
  end

  def destroy
    @art.destroy
    redirect_to artists_path
  end

  private
    def set_artist
      @art = current_user.artists.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:artist_name)
    end
end
