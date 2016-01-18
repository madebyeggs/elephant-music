class ChangeUrlInSound < ActiveRecord::Migration
  def self.up
    rename_column :sounds, :url, :soundcloud
  end

  def self.down
    rename_column :sounds, :soundcloud, :url
  end
end
