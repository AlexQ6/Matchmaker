class CoachesController < ApplicationController
  # set @coach as current coach as received by params in the following methods
  before_action :find_coach, only: [:show, :edit, :update, :delete]

  def index
  end

  
  def show
  end

  def new
    @coach = Coach.new
  end

  def create
    # Create new coach with strong params private methods
    @coach = Coach.new(strongparams)
    # set user id foreign of new coach to current user
    @coach.user_id = current_user
    @coach.save
    
    redirect_to coach_path(@coach)
  end
  

  def edit
  end

  def update
  
  end

  def delete

  end

  private 
  def find_coach
    @coach = Coach.find(params[:id])
  end

  def strongparams
    params.require(:coach).permit(:business_name, :children_check, :business_mobile, :bio)
  end

end
