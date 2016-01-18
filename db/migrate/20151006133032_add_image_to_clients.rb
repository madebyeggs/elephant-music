class AddImageToClients < ActiveRecord::Migration
  def self.up
    add_attachment :clients, :image
  end

  def self.down
    remove_attachment :clients, :image
  end
end
