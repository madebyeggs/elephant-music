class AddVimeoToWork < ActiveRecord::Migration
  def change
      change_table :works do |t|
        t.rename :url, :vimeo
      end
    end
end
