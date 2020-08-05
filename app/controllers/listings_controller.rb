class ListingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @all = Listings.all

  end

  def show
  
  end


  private

  def set_listing
    @listing = Listing.find(params[:id])
  end
  
end
