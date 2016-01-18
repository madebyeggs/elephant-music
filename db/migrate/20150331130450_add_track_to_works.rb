class AddTrackToWorks < ActiveRecord::Migration
  def change
    add_column :works, :track_name, :string
  end
end
