class ChangeFieldsInAnnouncement < ActiveRecord::Migration
  def change
      change_table :announcements do |t|
        t.rename :title, :homepage_title
        t.rename :video, :vimeo
      end
    end
end
