class Announcement < ActiveRecord::Base
  attr_accessible :homepage_title, :image, :vimeo, :description, :soundcloud, :large_image, :latest, :square_image, 
  :uid, :is_artist, :is_work, :is_sound, :is_announcement, :short_uid_url, :facebook_image
  
  extend FriendlyId
  friendly_id :homepage_title, use: [:slugged, :history]
  
  before_save :create_unique_id
  
  require 'bitly'
  
  # This method associates the attribute ":avatar" with a file attachment
  
    if Rails.env.development?
      has_attached_file :image, MAIN_PAPERCLIP_STORAGE_OPTS
    else
      has_attached_file :image, 
      :convert_options => { :all => '-quality 92' }, 
      styles: {main: '710x210>'},
      :storage => :s3,
      :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET'] },
      :url => ':s3_alias_url',
      :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
      :bucket => 'fairsplit-images',
      :path => "announcements/images/:id_partition/:style/:filename"
    end
    
    if Rails.env.development?
      has_attached_file :square_image, SQUARE_PAPERCLIP_STORAGE_OPTS
    else
      has_attached_file :square_image,
      :convert_options => { :all => '-quality 92' }, 
      styles: {main: '300x300>'},
      :storage => :s3,
      :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET'] },
      :url => ':s3_alias_url',
      :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
      :bucket => 'fairsplit-images',
      :path => "announcements/square_images/:id_partition/:style/:filename"
    end
    
    if Rails.env.development?
      has_attached_file :large_image, LARGE_PAPERCLIP_STORAGE_OPTS
    else
      has_attached_file :large_image,
      :convert_options => { :all => '-quality 92' }, 
      styles: {main: '710x400>'},
      :storage => :s3,
      :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET'] },
      :url => ':s3_alias_url',
      :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
      :bucket => 'fairsplit-images',
      :path => "announcements/large_images/:id_partition/:style/:filename"
    end
    
    if Rails.env.development?
      has_attached_file :facebook_image, FACEBOOK_PAPERCLIP_STORAGE_OPTS
    else
      has_attached_file :facebook_image,
      styles: {main: '1200x630>'},
      :convert_options => { :all => '-quality 92' },
      :storage => :s3,
      :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET'] },
      :url => ':s3_alias_url',
      :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
      :bucket => 'fairsplit-images',
      :path => "announcements/facebook_images/:id_partition/:style/:filename"
    end
    

    # Validate the attached image is image/jpg, image/png, etc
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    
    # Validate the attached image is image/jpg, image/png, etc
    validates_attachment_content_type :large_image, :content_type => /\Aimage\/.*\Z/
    
    # Validate the attached image is image/jpg, image/png, etc
    validates_attachment_content_type :square_image, :content_type => /\Aimage\/.*\Z/
    
    # Validate the attached image is image/jpg, image/png, etc
    validates_attachment_content_type :facebook_image, :content_type => /\Aimage\/.*\Z/
    
    def create_unique_id
      self.is_artist = false
      self.is_work = false
      self.is_sound = false
      self.is_announcement = true
    end
    
    def self.common_order
      order("id DESC")
    end
end