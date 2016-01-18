class RemovePostingFromWorks < ActiveRecord::Migration
  def up
    remove_column :works, :short_id_url
  end

  def down
    add_column :works, :short_id_url, :string
  end
end
