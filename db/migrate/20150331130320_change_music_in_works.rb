class ChangeMusicInWorks < ActiveRecord::Migration
  def up
    rename_column :works, :music, :artist_name
  end

  def down
    rename_column :works, :artist_name, :music
  end
end
