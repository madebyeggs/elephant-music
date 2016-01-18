class AddHomepageToAll < ActiveRecord::Migration
  def change
    add_column :artists, :homepage, :boolean
    add_column :sounds, :homepage, :boolean
    add_column :works, :homepage, :boolean
  end
end
