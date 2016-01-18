class AddRandomToWork < ActiveRecord::Migration
  def change
    add_column :works, :uid, :string
  end
end
