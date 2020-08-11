class CoachesController < ApplicationController
  before_action :find_coach, only: [:show, :edit, :update, :delete]

  def index
  end

  

  def show
  end

  def new
    pp params
    pp current_user
    pp @coach = Coach.new
    # current_user.add_role :coach
    pp params
    
  end

  def create
    
    pp @coach = Coach.new(strongparams)
    pp params
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
