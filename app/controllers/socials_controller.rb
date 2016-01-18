class SocialsController < ApplicationController
  before_filter :authenticate_user!
  
    def new
      bring_in_models
      @social = Social.new
    end

    def create
      @social = Social.create(params[:social])
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end
    
    def edit
      bring_in_models
      @social = Social.find(params[:id])
    end

    def update   
      @social = Social.find(params[:id])
      if @social.update_attributes(params[:social])
        respond_to do |format|
         format.html { redirect_to cms_path }
        end
      else
        render :action => 'edit'
      end
    end

    def destroy
      @social = Social.find(params[:id])
      @social.destroy
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end
    
end
