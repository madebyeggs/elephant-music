class CreateSocials < ActiveRecord::Migration
  def change
    create_table :socials do |t|
      t.string :name
      t.timestamps
    end
  end
end
