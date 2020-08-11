class ListingsController < ApplicationController
  # set @coach as current coach as received by params in the following methods
  before_action :set_listing, only: [:show]
  # Prevents site visitors from access to the following methods
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
    # set @coach to id of current logged in coach 
    @coach = Coach.find(params[:coach_id])
    # create new listing with strong params private methods
    @listing = Listing.new(strongparams)
    # make coach foreign key in new listing as current logged in coach 
    @listing.coach_id = @coach.id
    # flash and alerts for creation success or failure
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
    # text on screen for deletion confirmation
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'The listing has been deleted.' }
      format.json { head :no_content }
    end

  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end


  def strongparams
    params.require(:listing).permit(:title, :description, :price, :term, :location, :picture, :coach_id)
  end

end
