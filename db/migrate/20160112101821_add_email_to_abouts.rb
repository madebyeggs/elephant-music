class AddEmailToAbouts < ActiveRecord::Migration
  def change
    add_column :abouts, :email, :string
  end
end
