class AddLatestToSound < ActiveRecord::Migration
  def change
    add_column :sounds, :latest, :boolean
  end
end
