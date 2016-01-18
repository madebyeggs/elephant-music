class AddArtistToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :is_artist, :boolean
    add_column :artists, :is_work, :boolean
    add_column :artists, :is_sound, :boolean
    add_column :artists, :is_announcement, :boolean
  end
end
