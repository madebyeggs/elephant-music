class ContactsController < ApplicationController
  before_filter :authenticate_user!, :except => ["index"]
  
  def index
    bring_in_models
    set_meta_tags :og => {
      :title    => 'Elephant Music | Contact',
      :url      => "#{@currentUrl}",
      :description      => "Elephant Music | London HQ",
      :image    => "#{@social.contacts_image}"
    }
    set_meta_tags twitter: {
      card: "summary_large_image",
      site: "@Elephant__Music",
      title: "Elephant Music | Contact",
      description: "Elephant Music | London HQ",
      image: "#{@social.contacts_image}"
    }
  end
  
end