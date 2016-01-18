class RemoveShortUidUrlFromWorks < ActiveRecord::Migration
  def up
    remove_column :works, :uid
    remove_column :works, :short_uid_url
  end

  def down
    add_column :works, :uid, :string
    add_column :works, :short_uid_url, :string
  end
end
