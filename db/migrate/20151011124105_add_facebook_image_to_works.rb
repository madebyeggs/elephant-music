class AddFacebookImageToWorks < ActiveRecord::Migration
  def self.up
    add_attachment :works, :facebook_image
  end
  
  def self.down
    remove_attachment :works, :facebook_image
  end
end
