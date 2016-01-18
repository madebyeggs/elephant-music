class AddLatestToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :latest, :boolean
  end
end
