class RemoveUidFromAnnouncements < ActiveRecord::Migration
  def up
    remove_column :announcements, :uid
    remove_column :announcements, :short_uid_url
  end

  def down
    add_column :announcements, :uid, :string
    add_column :announcements, :short_uid_url, :string
  end
end
