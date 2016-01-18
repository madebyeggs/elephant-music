class AddUrlToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :short_uid_url, :string
    add_column :artists, :short_id_url, :string
  end
end
