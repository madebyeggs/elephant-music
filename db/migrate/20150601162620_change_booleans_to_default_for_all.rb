class ChangeBooleansToDefaultForAll < ActiveRecord::Migration
  def up
    change_column :works, :latest, :boolean, :default => false
    change_column :works, :homepage, :boolean, :default => false
    change_column :artists, :latest, :boolean, :default => false
    change_column :artists, :homepage, :boolean, :default => false
    change_column :sounds, :latest, :boolean, :default => false
    change_column :sounds, :homepage, :boolean, :default => false
  end

  def down
    change_column :works, :latest, :boolean, :default => nil
    change_column :works, :homepage, :boolean, :default => nil
    change_column :artists, :latest, :boolean, :default => nil
    change_column :artists, :homepage, :boolean, :default => nil
    change_column :sounds, :latest, :boolean, :default => nil
    change_column :sounds, :homepage, :boolean, :default => nil
  end
end
