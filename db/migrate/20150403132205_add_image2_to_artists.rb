class AddImage2ToArtists < ActiveRecord::Migration
  def self.up
    add_attachment :artists, :small_image
  end

  def self.down
    remove_attachment :artists, :small_image
  end
end
