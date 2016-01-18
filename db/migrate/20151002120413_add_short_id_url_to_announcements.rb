class AddShortIdUrlToAnnouncements < ActiveRecord::Migration
  def change
    add_column :announcements, :short_id_url, :string
  end
end
