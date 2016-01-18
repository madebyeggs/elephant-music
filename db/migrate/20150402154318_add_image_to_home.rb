class AddImageToHome < ActiveRecord::Migration
  def self.up
    add_attachment :homes, :image
  end

  def self.down
    remove_attachment :homes, :image
  end
end
