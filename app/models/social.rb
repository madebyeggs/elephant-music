class Social < ActiveRecord::Base
  attr_accessible :name, :announcements_image, :works_image, :artists_image, :playlists_image, 
  :abouts_image, :contacts_image, :url
  
  if Rails.env.development?
    has_attached_file :announcements_image, FACEBOOK_PAPERCLIP_STORAGE_OPTS
  else
    has_attached_file :announcements_image,
    styles: {main: '1200x630>'},
    :convert_options => { :all => '-quality 92' }, 
    :storage => :s3,
    :s3_credentials => {
    :access_key_id => ENV['S3_KEY'],
    :secret_access_key => ENV['S3_SECRET'] },
    :url => ':s3_alias_url',
    :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
    :bucket => 'fairsplit-images',
    :path => "socials/images/:id_partition/:style/:filename"
  end
  
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :announcements_image, :content_type => /\Aimage\/.*\Z/
  
  if Rails.env.development?
    has_attached_file :works_image, FACEBOOK_PAPERCLIP_STORAGE_OPTS
  else
    has_attached_file :works_image,
    styles: {main: '1200x630>'},
    :convert_options => { :all => '-quality 92' }, 
    :storage => :s3,
    :s3_credentials => {
    :access_key_id => ENV['S3_KEY'],
    :secret_access_key => ENV['S3_SECRET'] },
    :url => ':s3_alias_url',
    :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
    :bucket => 'fairsplit-images',
    :path => "socials/images/:id_partition/:style/:filename"
  end
  
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :works_image, :content_type => /\Aimage\/.*\Z/
  
  if Rails.env.development?
    has_attached_file :artists_image, FACEBOOK_PAPERCLIP_STORAGE_OPTS
  else
    has_attached_file :artists_image,
    styles: {main: '1200x630>'},
    :convert_options => { :all => '-quality 92' }, 
    :storage => :s3,
    :s3_credentials => {
    :access_key_id => ENV['S3_KEY'],
    :secret_access_key => ENV['S3_SECRET'] },
    :url => ':s3_alias_url',
    :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
    :bucket => 'fairsplit-images',
    :path => "socials/images/:id_partition/:style/:filename"
  end
  
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :artists_image, :content_type => /\Aimage\/.*\Z/
  
  if Rails.env.development?
    has_attached_file :playlists_image, FACEBOOK_PAPERCLIP_STORAGE_OPTS
  else
    has_attached_file :playlists_image,
    styles: {main: '1200x630>'},
    :convert_options => { :all => '-quality 92' }, 
    :storage => :s3,
    :s3_credentials => {
    :access_key_id => ENV['S3_KEY'],
    :secret_access_key => ENV['S3_SECRET'] },
    :url => ':s3_alias_url',
    :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
    :bucket => 'fairsplit-images',
    :path => "socials/images/:id_partition/:style/:filename"
  end
  
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :playlists_image, :content_type => /\Aimage\/.*\Z/
  
  if Rails.env.development?
    has_attached_file :abouts_image, FACEBOOK_PAPERCLIP_STORAGE_OPTS
  else
    has_attached_file :abouts_image,
    styles: {main: '1200x630>'},
    :convert_options => { :all => '-quality 92' }, 
    :storage => :s3,
    :s3_credentials => {
    :access_key_id => ENV['S3_KEY'],
    :secret_access_key => ENV['S3_SECRET'] },
    :url => ':s3_alias_url',
    :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
    :bucket => 'fairsplit-images',
    :path => "socials/images/:id_partition/:style/:filename"
  end
  
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :abouts_image, :content_type => /\Aimage\/.*\Z/
  
  if Rails.env.development?
    has_attached_file :contacts_image, FACEBOOK_PAPERCLIP_STORAGE_OPTS
  else
    has_attached_file :contacts_image,
    styles: {main: '1200x630>'},
    :convert_options => { :all => '-quality 92' }, 
    :storage => :s3,
    :s3_credentials => {
    :access_key_id => ENV['S3_KEY'],
    :secret_access_key => ENV['S3_SECRET'] },
    :url => ':s3_alias_url',
    :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
    :bucket => 'fairsplit-images',
    :path => "socials/images/:id_partition/:style/:filename"
  end
  
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :contacts_image, :content_type => /\Aimage\/.*\Z/
  
end