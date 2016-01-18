class AddAnotherimageToWorks < ActiveRecord::Migration
  def self.up
    add_attachment :works, :large_image
  end

  def self.down
    remove_attachment :works, :large_image
  end
end
