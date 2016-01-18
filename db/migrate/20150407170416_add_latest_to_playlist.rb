class AddLatestToPlaylist < ActiveRecord::Migration
  def change
    def change
      add_column :sounds, :latest, :boolean
    end
  end
end
