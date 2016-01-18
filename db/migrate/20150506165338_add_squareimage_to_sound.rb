class AddSquareimageToSound < ActiveRecord::Migration
  def self.up
    add_attachment :sounds, :square_image
  end

  def self.down
    remove_attachment :sounds, :square_image
  end
end
