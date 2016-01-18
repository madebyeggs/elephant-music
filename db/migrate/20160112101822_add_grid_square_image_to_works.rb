class AddGridSquareImageToWorks < ActiveRecord::Migration
  def self.up
    add_attachment :works, :grid_square_image
  end

  def self.down
    remove_attachment :works, :grid_square_image
  end
end
