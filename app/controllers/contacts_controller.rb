class ContactsController < ApplicationController
  before_filter :authenticate_user!, :except => ["index"]
  
  def index
    bring_in_models
    set_meta_tags :og => {
      :title    => 'Split Music | Contact',
      :url      => "#{@currentUrl}",
      :description      => "Split Music | London HQ",
      :image    => "#{@social.contacts_image}"
    }
    set_meta_tags twitter: {
      card: "summary_large_image",
      site: "@fairsplitmusic",
      title: "Split Music | Contact",
      description: "Split Music | London HQ",
      image: "#{@social.contacts_image}"
    }
  end
  
end