class RemoveLengthFromSong < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :length, :time
  end
end
