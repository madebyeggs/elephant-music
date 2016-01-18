class AddHometitleToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :homepage_title, :string
  end
end
