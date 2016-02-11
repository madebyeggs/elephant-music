class AddYoutubeToWork < ActiveRecord::Migration
  def change
    add_column :works, :youtube, :string
  end
end
