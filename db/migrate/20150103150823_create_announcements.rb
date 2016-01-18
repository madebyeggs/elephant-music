class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.string :video
      t.text :description
      t.string :soundcloud
      t.timestamps
    end
  end
end
