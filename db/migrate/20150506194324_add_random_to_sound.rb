class AddRandomToSound < ActiveRecord::Migration
  def change
    add_column :sounds, :uid, :string
  end
end
