class AddRandomToAnnouncement < ActiveRecord::Migration
  def change
    add_column :announcements, :uid, :string
  end
end
