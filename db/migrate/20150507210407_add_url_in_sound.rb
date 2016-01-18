class AddUrlInSound < ActiveRecord::Migration
  def change
    add_column :sounds, :short_uid_url, :string
    add_column :sounds, :short_id_url, :string
  end
end
