class AddLatestToWork < ActiveRecord::Migration
  def change
    add_column :works, :latest, :boolean
  end
end
