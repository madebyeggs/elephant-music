class Client < ActiveRecord::Base
  attr_accessible :name, :image, :url
  
  if Rails.env.development?
    has_attached_file :image, SQUARE_PAPERCLIP_STORAGE_OPTS
  else
    has_attached_file :image,
    styles: {main: '300x300>'},
    :convert_options => { :all => '-quality 92' }, 
    :storage => :s3,
    :s3_credentials => {
    :access_key_id => ENV['S3_KEY'],
    :secret_access_key => ENV['S3_SECRET'] },
    :url => ':s3_alias_url',
    :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
    :bucket => 'fairsplit-images',
    :path => "clients/images/:id_partition/:style/:filename"
  end
  
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  def self.common_order
    order("created_at DESC")
  end
  
end
