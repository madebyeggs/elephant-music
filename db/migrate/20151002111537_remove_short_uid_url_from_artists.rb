class RemoveShortUidUrlFromArtists < ActiveRecord::Migration
  def up
    remove_column :artists, :short_uid_url
  end

  def down
    add_column :artists, :short_uid_url, :string
  end
end
