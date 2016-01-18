class AddShortUrlToSound < ActiveRecord::Migration
  def change
    add_column :sounds, :short_url, :string
  end
end
