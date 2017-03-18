class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  validates :artist, presence: true
end
