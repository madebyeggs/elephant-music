class AddVimeoToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :vimeo, :string
  end
end
