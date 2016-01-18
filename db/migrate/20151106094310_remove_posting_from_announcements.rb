class RemovePostingFromAnnouncements < ActiveRecord::Migration
  def up
    remove_column :announcements, :short_id_url
  end

  def down
    add_column :announcements, :short_id_url, :string
  end
end
