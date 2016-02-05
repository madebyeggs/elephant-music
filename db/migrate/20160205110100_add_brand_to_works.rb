class AddBrandToWorks < ActiveRecord::Migration
  def change
    add_column :works, :brand, :string
  end
end
