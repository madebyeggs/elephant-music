class AddLargeimageToArtist < ActiveRecord::Migration
  def self.up
    add_attachment :artists, :large_image
  end

  def self.down
    remove_attachment :artists, :large_image
  end
end