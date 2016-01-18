class AddShortUidUrlToWork < ActiveRecord::Migration
  def change
    add_column :works, :short_uid_url, :string
  end
end
