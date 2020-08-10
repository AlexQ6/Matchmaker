class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :delete]
  # before_action :authenticate_user!

  def index
    @all = Listing.all

  end

  

  def show
  
  end
  
  def new
    @listing = Listing.new
    current_user.add_role :coach
    
  end

  def create
    @listing = Listing.new(strongparams)
    @listing.save
    # @coach.user = current_user
    redirect_to listings_path
  end
  

  def edit
  end

  def update
  
  end

  def delete

  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def strongparams
    params.require(:listing).permit(:title, :description, :price, :term, :location, :picture)
  end

end
