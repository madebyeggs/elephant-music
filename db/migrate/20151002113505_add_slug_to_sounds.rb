class AddSlugToSounds < ActiveRecord::Migration
  def change
     add_column :sounds, :slug, :string
     add_index :sounds, :slug
   end
  
end
