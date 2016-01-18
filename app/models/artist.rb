class Artist < ActiveRecord::Base
  attr_accessible :name, :description, :soundcloud, :image, :square_image, :latest, :large_image, :homepage_title, :vimeo, :uid, 
  :is_artist, :is_work, :is_sound, :is_announcement, :short_id_url, :short_uid_url, :homepage, :facebook_image, :fb_url, :twitter_name
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
  
  has_many :works
  before_save :create_unique_id
  
  require 'bitly'
  
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
      :path => "artists/images/:id_partition/:style/:filename"
    end
    
    if Rails.env.development?
      has_attached_file :square_image, SQUARE_PAPERCLIP_STORAGE_OPTS
    else
      has_attached_file :square_image,
      styles: {main: '400x400>'},
      :convert_options => { :all => '-quality 92' }, 
      :storage => :s3,
      :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET'] },
      :url => ':s3_alias_url',
      :s3_host_alias => 'd2gtajjeesejrd.cloudfront.net', 
      :bucket => 'fairsplit-images',
      :path => "artists/square_images/:id_partition/:style/:filename"
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
      :path => "artists/large_images/:id_partition/:style/:filename"
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
      :path => "artists/facebook_images/:id_partition/:style/:filename"
    end
    
    # Validate the attached image is image/jpg, image/png, etc
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    
    # Validate the attached image is image/jpg, image/png, etc
    validates_attachment_content_type :square_image, :content_type => /\Aimage\/.*\Z/
    
    # Validate the attached image is image/jpg, image/png, etc
    validates_attachment_content_type :large_image, :content_type => /\Aimage\/.*\Z/
    
    # Validate the attached image is image/jpg, image/png, etc
    validates_attachment_content_type :facebook_image, :content_type => /\Aimage\/.*\Z/
    
    def create_unique_id
      self.is_artist = true
      self.is_work = false
      self.is_sound = false
      self.is_announcement = false
      if self.latest == true
        self.class.where("id != ?", self.id).update_all("latest = 'false'")
      end
    end
    
    def self.common_order
      order("latest DESC, name ASC")
    end
    
    def self.homepage
      where(:homepage => true)
    end
    
end