class ListingsController < ApplicationController
  before_action :set_listing, only: [:show]
  # before_action :set_user_listing, only: [:edit, :update, :delete]
  # before_action :authorize, only: [:edit, :update, :delete]
  before_action :authenticate_user!, only: [:edit, :update, :delete]

  def index
    @listings = Listing.all

  end

  

  def show
  
  end
  
  def new
    @listing = Listing.new
    params
    @coach = Coach.find(params[:coach_id])
    
    
  end

  def create
    @coach = Coach.find(params[:coach_id])
    @listing = Listing.new(strongparams)
    @listing.coach_id = @coach.id
    if @listing.save! 
      flash[:notice] = "Listing created successfully"
      redirect_to coach_listing_path(@coach, @listing)
    else 
      flash.now[:alert] = "Listing was not created"
      render "new"
    end 

    
  end
  

  def edit
  end

  def update
  
  end

  def delete
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'The listing has been deleted.' }
      format.json { head :no_content }
    end

  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  # def set_user_listing
  #   id = params[:id]
  #   @listing = current_user.listings.find_by_id(id)

  #   if @listing == nil
  #       redirect_to coach_listings_path
  #   end
  # end

  def strongparams
    params.require(:listing).permit(:title, :description, :price, :term, :location, :picture, :coach_id)
  end

end
