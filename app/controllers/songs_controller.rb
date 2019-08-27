class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:update, :edit, :destroy, :show]
  

  def index
    @song = @art.songs
  end

  def show
  end

  def new
    @song = @art.songs.new
    render :template => "songs/_form"
  end

  def create
    @song = @art.songs.new(song_params)

    if @song.save
      redirect_to artist_path(@art)
    else
      render :new
    end
  end
  
  def edit
    render :template => "songs/_form"
  end

  def update
    if @song.update(song_params)
      redirect_to artist_path(@art)
    else
      render :edit 
    end
  end

  def destroy
    @song.destroy
    redirect_to artist_path(@art)
  end

  private

  def set_artist
    @art = current_user.artists.find(params[:artist_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:song_title)
  end

end
