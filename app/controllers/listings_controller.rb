class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :delete]
  before_action :authenticate_user!

  def index
    @all = Listing.all

  end

  def show
  
  end


  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

end
