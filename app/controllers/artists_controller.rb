class ArtistsController < ApplicationController
  before_action :set_artist, except: [:index]

  def index
    @artists = Artist.all
  end

  def show; end

  def destroy; end

  private
    def set_artist
      @artist = Artist.find(params[:id])
    end
end
