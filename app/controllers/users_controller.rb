class UsersController < ApplicationController
  
  def show
    puts "show method here"
    pp current_user
    pp params
    
    
  end

  def edit 
    puts "edit method here"
    pp params
    
  end
    
  def update
    puts "update method here"
    pp params

  end


end
