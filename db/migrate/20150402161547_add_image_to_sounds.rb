class AddImageToSounds < ActiveRecord::Migration
  def self.up
    add_attachment :sounds, :image
  end

  def self.down
    remove_attachment :sounds, :image
  end
end