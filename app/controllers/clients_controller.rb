class ClientsController < ApplicationController
  before_filter :authenticate_user!
  
    def new
      bring_in_models
      @client = Client.new
    end

    def create
      @client = Client.create(params[:client])
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end
    
    def edit
      bring_in_models
      @client = Client.find(params[:id])
    end

    def update   
      @client = Client.find(params[:id])
      if @client.update_attributes(params[:client])
        respond_to do |format|
         format.html { redirect_to cms_path }
        end
      else
        render :action => 'edit'
      end
    end

    def destroy
      @client = Client.find(params[:id])
      @client.destroy
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end  

end