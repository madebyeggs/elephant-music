# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20160112101822) do

  create_table "abouts", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "footer"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "email"
  end

  create_table "announcements", :force => true do |t|
    t.string   "homepage_title"
    t.string   "vimeo"
    t.text     "description"
    t.string   "soundcloud"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "large_image_file_name"
    t.string   "large_image_content_type"
    t.integer  "large_image_file_size"
    t.datetime "large_image_updated_at"
    t.string   "square_image_file_name"
    t.string   "square_image_content_type"
    t.integer  "square_image_file_size"
    t.datetime "square_image_updated_at"
    t.boolean  "is_artist"
    t.boolean  "is_work"
    t.boolean  "is_sound"
    t.boolean  "is_announcement"
    t.boolean  "latest"
    t.string   "slug"
    t.string   "facebook_image_file_name"
    t.string   "facebook_image_content_type"
    t.integer  "facebook_image_file_size"
    t.datetime "facebook_image_updated_at"
    t.string   "short_uid_url"
  end

  add_index "announcements", ["slug"], :name => "index_announcements_on_slug"

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "soundcloud"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "square_image_file_name"
    t.string   "square_image_content_type"
    t.integer  "square_image_file_size"
    t.datetime "square_image_updated_at"
    t.boolean  "latest",                      :default => false
    t.string   "large_image_file_name"
    t.string   "large_image_content_type"
    t.integer  "large_image_file_size"
    t.datetime "large_image_updated_at"
    t.string   "vimeo"
    t.boolean  "is_artist"
    t.boolean  "is_work"
    t.boolean  "is_sound"
    t.boolean  "is_announcement"
    t.boolean  "homepage",                    :default => false
    t.string   "homepage_title"
    t.string   "slug"
    t.string   "facebook_image_file_name"
    t.string   "facebook_image_content_type"
    t.integer  "facebook_image_file_size"
    t.datetime "facebook_image_updated_at"
    t.string   "short_uid_url"
    t.string   "fb_url"
    t.string   "twitter_name"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "url"
  end

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "homes", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "socials", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "announcements_image_file_name"
    t.string   "announcements_image_content_type"
    t.integer  "announcements_image_file_size"
    t.datetime "announcements_image_updated_at"
    t.string   "works_image_file_name"
    t.string   "works_image_content_type"
    t.integer  "works_image_file_size"
    t.datetime "works_image_updated_at"
    t.string   "artists_image_file_name"
    t.string   "artists_image_content_type"
    t.integer  "artists_image_file_size"
    t.datetime "artists_image_updated_at"
    t.string   "playlists_image_file_name"
    t.string   "playlists_image_content_type"
    t.integer  "playlists_image_file_size"
    t.datetime "playlists_image_updated_at"
    t.string   "abouts_image_file_name"
    t.string   "abouts_image_content_type"
    t.integer  "abouts_image_file_size"
    t.datetime "abouts_image_updated_at"
    t.string   "contacts_image_file_name"
    t.string   "contacts_image_content_type"
    t.integer  "contacts_image_file_size"
    t.datetime "contacts_image_updated_at"
  end

  create_table "sounds", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "soundcloud"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "latest",                         :default => false
    t.string   "homepage_title"
    t.string   "square_image_file_name"
    t.string   "square_image_content_type"
    t.integer  "square_image_file_size"
    t.datetime "square_image_updated_at"
    t.string   "vimeo"
    t.boolean  "is_artist"
    t.boolean  "is_work"
    t.boolean  "is_sound"
    t.boolean  "is_announcement"
    t.string   "large_image_file_name"
    t.string   "large_image_content_type"
    t.integer  "large_image_file_size"
    t.datetime "large_image_updated_at"
    t.string   "short_url"
    t.boolean  "homepage",                       :default => false
    t.string   "slug"
    t.string   "facebook_image_file_name"
    t.string   "facebook_image_content_type"
    t.integer  "facebook_image_file_size"
    t.datetime "facebook_image_updated_at"
    t.string   "short_uid_url"
    t.string   "grid_square_image_file_name"
    t.string   "grid_square_image_content_type"
    t.integer  "grid_square_image_file_size"
    t.datetime "grid_square_image_updated_at"
  end

  add_index "sounds", ["slug"], :name => "index_sounds_on_slug"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "works", :force => true do |t|
    t.string   "title"
    t.string   "client"
    t.text     "description"
    t.string   "vimeo"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.string   "artist_name"
    t.string   "type_of_work"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "track_name"
    t.string   "large_image_file_name"
    t.string   "large_image_content_type"
    t.integer  "large_image_file_size"
    t.datetime "large_image_updated_at"
    t.boolean  "latest",                         :default => false
    t.integer  "artist_id"
    t.boolean  "is_artist"
    t.boolean  "is_work"
    t.boolean  "is_sound"
    t.boolean  "is_announcement"
    t.boolean  "homepage",                       :default => false
    t.string   "homepage_title"
    t.string   "slug"
    t.string   "facebook_image_file_name"
    t.string   "facebook_image_content_type"
    t.integer  "facebook_image_file_size"
    t.datetime "facebook_image_updated_at"
    t.string   "short_uid_url"
    t.string   "grid_square_image_file_name"
    t.string   "grid_square_image_content_type"
    t.integer  "grid_square_image_file_size"
    t.datetime "grid_square_image_updated_at"
  end

  add_index "works", ["slug"], :name => "index_works_on_slug"

end
