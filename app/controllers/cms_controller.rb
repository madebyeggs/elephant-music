class CmsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    bring_in_models
  end
  
end