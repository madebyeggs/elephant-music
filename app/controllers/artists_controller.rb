class ArtistsController < ApplicationController
  before_filter :authenticate_user!, :except => ["index", "show"]
  
    def new
      bring_in_models
      @artist = Artist.new
    end

    def create
      @artist = Artist.create(params[:artist])
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

    def show
      bring_in_models
      @artist = Artist.find(params[:id])
      if request.path != artist_path(@artist)
        redirect_to @artist, status: :moved_permanently and return
      end
      set_meta_tags og: {
        url: "#{@currentUrl}",
        image: "#{@artist.facebook_image}",
        title: "#{@artist.name}",
        description: "#{@artist.description}",
        type: "musician"
      }
      set_meta_tags twitter: {
        card: "summary_large_image",
        site: "@fairsplitmusic",
        title: "#{@artist.name}",
        description: "#{@artist.description}",
        image: "#{@artist.facebook_image}"
      }
      render :show, flush: true
    end

    def index
      bring_in_models
      @artists = Artist.common_order
      set_meta_tags :og => {
        :url => "#{@currentUrl}",
        :title    => 'Split Music | Artists',
        :image    => "#{@social.artists_image}",
        :description => '21st Century Music Publishing | Unique Music to Picture'
      }
      set_meta_tags twitter: {
        card: "summary_large_image",
        site: "@fairsplitmusic",
        title: "Split Music | Artists",
        description: "21st Century Music Publishing | Unique Music to Picture",
        image: "#{@social.artists_image}"
      }
    end
    
    def edit
      bring_in_models
      bring_in_models
      @artist = Artist.find(params[:id])
    end

    def update   
      @artist = Artist.find(params[:id])
      if @artist.update_attributes(params[:artist])
        respond_to do |format|
         format.html { redirect_to cms_path }
        end
      else
        render :action => 'edit'
      end
    end

    def destroy
      @artist = Artist.find(params[:id])
      @artist.destroy
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end 

end