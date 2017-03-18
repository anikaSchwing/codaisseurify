class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to artists_path
    else
      redirect_to new_song_path
    end
  end

  def destroy; end

  private
    def song_params
      params.require(:song).permit(:title, :length, :artist_id)
    end
end
