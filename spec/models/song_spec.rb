require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without title" do
      song = Song.new(title:"")
      song.valid?
      expect(song.errors).to have_key(:title)
    end

    it "is invalid without artist" do
      song = Song.new(artist:nil)
      song.valid?
      expect(song.errors).to have_key(:artist)
    end
  end
end
