class RemoveShortUidFromSounds < ActiveRecord::Migration
  def up
    remove_column :sounds, :uid
    remove_column :sounds, :short_uid_url
  end

  def down
    add_column :sounds, :uid, :string
    add_column :sounds, :short_uid_url, :string
  end
end
