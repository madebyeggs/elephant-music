class AddArtistToSound < ActiveRecord::Migration
  def change
    add_column :sounds, :is_artist, :boolean
    add_column :sounds, :is_work, :boolean
    add_column :sounds, :is_sound, :boolean
    add_column :sounds, :is_announcement, :boolean
  end
end
