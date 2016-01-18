class AddSlugToWorks < ActiveRecord::Migration
  def change
    add_column :works, :slug, :string
    add_index :works, :slug
  end
end