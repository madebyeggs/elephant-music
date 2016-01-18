class RemovePostingFromSounds < ActiveRecord::Migration
  def up
    remove_column :sounds, :short_id_url
  end

  def down
    add_column :sounds, :short_id_url, :string
  end
end
