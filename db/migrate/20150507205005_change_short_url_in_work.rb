class ChangeShortUrlInWork < ActiveRecord::Migration
  def up
    rename_column :works, :short_url, :short_id_url
  end

  def down
    rename_column :works, :short_id_url, :short_url
  end
end
