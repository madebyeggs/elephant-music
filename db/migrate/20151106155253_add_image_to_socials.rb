class AddImageToSocials < ActiveRecord::Migration
  def self.up
    add_attachment :socials, :announcements_image
    add_attachment :socials, :works_image
    add_attachment :socials, :artists_image
    add_attachment :socials, :playlists_image
    add_attachment :socials, :abouts_image
    add_attachment :socials, :contacts_image
  end

  def self.down
    remove_attachment :socials, :announcements_image
    remove_attachment :socials, :works_image
    remove_attachment :socials, :artists_image
    remove_attachment :socials, :playlists_image
    remove_attachment :socials, :abouts_image
    remove_attachment :socials, :contacts_image
  end
end
