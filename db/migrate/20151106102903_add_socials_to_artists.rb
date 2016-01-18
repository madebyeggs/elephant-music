class AddSocialsToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :fb_url, :string
    add_column :artists, :twitter_name, :string
  end
end
