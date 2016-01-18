class AddHometitleToWork < ActiveRecord::Migration
  def change
    add_column :works, :homepage_title, :string
  end
end
