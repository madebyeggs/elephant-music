class AddRandomToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :uid, :string
  end
end
