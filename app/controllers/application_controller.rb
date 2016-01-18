class ApplicationController < ActionController::Base
  protect_from_forgery
  
  require 'bitly'
  require 'will_paginate/array'
  
  def bring_in_models
    @announcements = Announcement.common_order
    @works = Work.common_order
    @artists = Artist.common_order
    @sounds = Sound.common_order
    @abouts = About.all
    @combined_sorted = (Announcement.all + Work.homepage + Artist.homepage + Sound.homepage).sort {|a,b| b.created_at <=> a.created_at}#.paginate(:page => params[:page], :per_page => 4)
    @user = current_user
    @clients = Client.common_order
    @testing = "sofia@floatpr.com"
    @currentUrl = request.env['REQUEST_URI'].to_s
    @socials = Social.all
    @social = Social.first
  end
  
end