class AddLatestToAnnouncements < ActiveRecord::Migration
  def change
    add_column :announcements, :latest, :boolean
  end
end
