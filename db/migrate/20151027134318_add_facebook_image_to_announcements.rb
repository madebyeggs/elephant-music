class AddFacebookImageToAnnouncements < ActiveRecord::Migration
  def self.up
    add_attachment :announcements, :facebook_image
  end
  
  def self.down
    remove_attachment :announcements, :facebook_image
  end
end
