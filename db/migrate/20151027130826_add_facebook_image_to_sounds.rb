class AddFacebookImageToSounds < ActiveRecord::Migration
  def self.up
    add_attachment :sounds, :facebook_image
  end
  
  def self.down
    remove_attachment :sounds, :facebook_image
  end
end
