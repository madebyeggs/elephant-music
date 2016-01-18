class AddArtistToWork < ActiveRecord::Migration
  def change
    add_column :works, :is_artist, :boolean
    add_column :works, :is_work, :boolean
    add_column :works, :is_sound, :boolean
    add_column :works, :is_announcement, :boolean
  end
end
