class ArtistsController < ApplicationController
  before_action :set_artist, except: [:index]
  before_action :set_songs, except: [:index]

  def index
    if params[:order]
      @artists = Artist.all.order(params[:order])
    # elsif (params[:order] == 'name, desc')
    #   @artists = Artist.all.order(name: :desc)
    else
      @artists = Artist.all
    end
  end

  def show; end

  def destroy
    @artist.destroy
    redirect_to artists_path
  end

  private
    def set_artist
      @artist = Artist.find(params[:id])
    end

    def set_songs
      @songs = Artist.find(params[:id]).songs
    end
end
