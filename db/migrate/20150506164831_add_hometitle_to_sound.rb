class AddHometitleToSound < ActiveRecord::Migration
  def change
    add_column :sounds, :homepage_title, :string
  end
end
