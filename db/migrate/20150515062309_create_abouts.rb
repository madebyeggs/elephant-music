class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :title
      t.text :description
      t.string :footer

      t.timestamps
    end
  end
end
