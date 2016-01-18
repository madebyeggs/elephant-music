class RemovePostingFromArtists < ActiveRecord::Migration
  def up
    remove_column :artists, :short_id_url
  end

  def down
    add_column :artists, :short_id_url, :string
  end
end
