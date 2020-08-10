class CoachesController < ApplicationController
  before_action :find_coach, only: [:show, :edit, :update, :delete]

  def index
  end

  

  def show
  end

  def new
    @coach = Coach.new
    current_user.add_role :coach
    
  end

  def create
    @coach = Coach.create(strongparams)
    @coach.user = current_user
    redirect_to coaches_path(current_user)
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
