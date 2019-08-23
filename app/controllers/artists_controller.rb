class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @arts = Artist.all
  end

  def show
  end

  def new
    @art = Artist.new
    #render partial: "form", artist: @art #! i tried running this, but styling wouldn't carry... if this succeedd, i could have deleted the new&edit.html.erb files and dried it up more...
  end

  def create
    @art = Artist.new(artist_params)

    if @art.save
      redirect_to artists_path
    else
      render :new
    end
  end
  
  def edit
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
      @art = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:artist_name)
    end
end
