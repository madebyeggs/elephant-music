class ChangeShortUrlInAnnouncement < ActiveRecord::Migration
  def up
    rename_column :announcements, :short_url, :short_uid_url
  end

  def down
    rename_column :announcements, :short_uid_url, :short_url
  end
end
