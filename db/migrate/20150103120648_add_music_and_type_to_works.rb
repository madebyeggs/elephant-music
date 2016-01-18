class AddMusicAndTypeToWorks < ActiveRecord::Migration
  def change
    add_column :works, :music, :string
    add_column :works, :type, :string
  end
end
