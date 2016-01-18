class AddShortUrlToWork < ActiveRecord::Migration
  def change
    add_column :works, :short_url, :string
  end
end
