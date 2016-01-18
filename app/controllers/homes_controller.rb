class HomesController < ApplicationController
  before_filter :authenticate_user!
  
    def new
      bring_in_models
      @home = Home.new
    end

    def create
      @home = Home.create(params[:home])
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

    def show
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

    def index
      @home = Home.all
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
      set_meta_tags :og => {
        :title    => 'Elephant Music | Sync focussed music publishing for the 21st Century',
        :url      => 'http://elephantmusic.net/artists',
        :image    => 'https://s3.amazonaws.com/elephant-music/SPLIT_MUSIC_1200_630_all_top_level.jpg'
      }
      set_meta_tags twitter: {
        card: "summary_large_image",
        site: "@Elephant__Music",
        title: "Elephant music's Artists",
        description: "The home for all of Elephant Music's artists",
        image: "https://s3.amazonaws.com/elephant-music/SPLIT_MUSIC_1200_630_all_top_level.jpg"
      }
    end

    def edit
      bring_in_models
      @home = Home.find(params[:id])
    end

    def update   
      @home = Home.find(params[:id])
      if @home.update_attributes(params[:home])
        respond_to do |format|
         format.html { redirect_to cms_path }
        end
      else
        render :action => 'edit'
      end
    end

    def destroy
      @home = Home.find(params[:id])
      @home.destroy
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

end