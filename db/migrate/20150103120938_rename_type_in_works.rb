class RenameTypeInWorks < ActiveRecord::Migration
  def self.up
    rename_column :works, :type, :type_of_work
  end

  def self.down
    rename_column :works, :type_of_work, :type
  end
end
