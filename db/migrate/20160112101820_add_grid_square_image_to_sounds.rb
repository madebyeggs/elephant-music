class AddGridSquareImageToSounds < ActiveRecord::Migration
  def self.up
    add_attachment :sounds, :grid_square_image
  end

  def self.down
    remove_attachment :sounds, :grid_square_image
  end
end
