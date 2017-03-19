class SongsController < ApplicationController
  before_action :set_artist

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params.merge(artist: @artist))
    if @song.save
      redirect_to_artist
    else
      redirect_to new_artist_song_path(@artist.id)
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to_artist
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def redirect_to_artist
      redirect_to artist_path(@artist.id)
    end

    def song_params
      params.require(:song).permit(:title, :artist_id)
    end
end
