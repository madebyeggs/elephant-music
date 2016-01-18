class AddLargeimageToSound < ActiveRecord::Migration
  def self.up
    add_attachment :sounds, :large_image
  end

  def self.down
    remove_attachment :sounds, :large_image
  end
end
