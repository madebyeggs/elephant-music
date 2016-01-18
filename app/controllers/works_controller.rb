class WorksController < ApplicationController
  before_filter :authenticate_user!, :except => ["index", "show"]
  
    def new
      bring_in_models
      @work = Work.new
    end

    def create
      @work = Work.create(params[:work])
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

    def show
      bring_in_models
      @work = Work.find(params[:id])
      if request.path != placement_path(@work)
        redirect_to @work, status: :moved_permanently and return
      end
      set_meta_tags og: {
        image: "#{@work.facebook_image}",
        url: "https://player.vimeo.com/video/#{@work.vimeo}",
        title: "#{@work.client}" + " " + "#{@work.client}",
        description: "Split Music | NEW WORK: #{@work.title}" + " " + "for" + " " + "#{@work.client}" + " " + "featuring" + " " + "#{@work.track_name}" + " " + "by" + " " + "#{@work.artist_name}",
        type: "video.other"
      }
      set_meta_tags twitter: {
        card: "player",
        site: "@fairsplitmusic",
        title: "#{@work.client}" + " " + "#{@work.client}",
        description: "Split Music | NEW WORK: #{@work.title}" + " " + "for" + " " + "#{@work.client}" + " " + "featuring" + " " + "#{@work.track_name}" + " " + "by" + " " + "#{@work.artist_name}",
        player: {
          _:      "https://player.vimeo.com/video/#{@work.vimeo}",
          stream: "https://player.vimeo.com/video/#{@work.vimeo}"
        }
      }
    end

    def index
      bring_in_models
      @works = Work.common_order
      set_meta_tags :og => {
        :url => "#{@currentUrl}",
        :title    => 'Split Music | Work',
        :image    => "#{@social.works_image}",
        :description => "21st Century Music Publishing | Unique Music to Picture"
      }
      set_meta_tags twitter: {
        card: "summary_large_image",
        site: "@fairsplitmusic",
        title: "Split Music | Work",
        description: "21st Century Music Publishing | Unique Music to Picture",
        image: "#{@social.works_image}"
      }
    end

    def edit
      bring_in_models
      @work = Work.find(params[:id])
    end

    def update   
      @work = Work.find(params[:id])
      if @work.update_attributes(params[:work])
        respond_to do |format|
         format.html { redirect_to cms_path }
        end
      else
        render :action => 'edit'
      end
    end

    def destroy
      @work = Work.find(params[:id])
      @work.destroy
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

end