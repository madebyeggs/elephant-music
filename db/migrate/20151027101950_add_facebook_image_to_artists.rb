class AddFacebookImageToArtists < ActiveRecord::Migration
  def self.up
    add_attachment :artists, :facebook_image
  end
  
  def self.down
    remove_attachment :artists, :facebook_image
  end
end
