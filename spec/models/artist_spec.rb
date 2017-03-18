require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      artist = Artist.new(name: "")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end

    it "is invalid without an image" do
      artist = Artist.new(image: "")
      artist.valid?
      expect(artist.errors).to have_key(:image)
    end
  end
end
