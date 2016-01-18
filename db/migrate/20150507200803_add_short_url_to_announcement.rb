class AddShortUrlToAnnouncement < ActiveRecord::Migration
  def change
    add_column :announcements, :short_url, :string
  end
end
