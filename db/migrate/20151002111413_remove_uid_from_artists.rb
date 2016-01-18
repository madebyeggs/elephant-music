class RemoveUidFromArtists < ActiveRecord::Migration
  def up
    remove_column :artists, :uid
  end

  def down
    add_column :artists, :uid, :string
  end
end
