class AddArtistToAnnouncement < ActiveRecord::Migration
  def change
    add_column :announcements, :is_artist, :boolean
    add_column :announcements, :is_work, :boolean
    add_column :announcements, :is_sound, :boolean
    add_column :announcements, :is_announcement, :boolean
  end
end
