class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # attempts at authorisation global helper
  def authorize
    if current_user.nil?
      flash[:alert] = "You are not authorised to perform that action!"
      redirect_to root_path
    end
  end

  def authorise_coach
    return if @coach.can_edit?(current_user)
    
    flash[:alert] = "You are not authorised to perform that action!"
    redirect_to root_path
  end
  
  protected
  # allow picture through params pass devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:picture)
  end
end
