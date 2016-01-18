class ChangeNameInArtist < ActiveRecord::Migration
  def self.up
      rename_column :artists, :small_image_file_name, :square_image_file_name
      rename_column :artists, :small_image_file_size, :square_image_file_size
      rename_column :artists, :small_image_content_type, :square_image_content_type
      rename_column :artists, :small_image_updated_at, :square_image_updated_at       
    end

    def self.down
      rename_column :artists, :square_image_file_name, :small_image_file_name
      rename_column :artists, :square_image_file_size, :small_image_file_size
      rename_column :artists, :square_image_content_type, :small_image_content_type
      rename_column :artists, :square_image_updated_at, :small_image_updated_at
    end
end
