class AddVimeoToSound < ActiveRecord::Migration
  def change
    add_column :sounds, :vimeo, :string
  end
end
