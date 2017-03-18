class SongsController < ApplicationController
  def new
    @song = Song.new
    @artist = Artist.find(params[:artist_id])
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = Song.new(song_params.merge(artist: @artist))
    if @song.save
      redirect_to artist_path(@artist.id)
    else
      redirect_to new_artist_song_path(@artist.id)
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path(params[:artist_id])
  end

  private
    def song_params
      params.require(:song).permit(:title, :length, :artist_id)
    end
end
