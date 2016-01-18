class AddAnotherimageToAnnouncements < ActiveRecord::Migration
  def self.up
    add_attachment :announcements, :large_image
  end

  def self.down
    remove_attachment :announcements, :large_image
  end
end
