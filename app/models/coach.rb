class Coach < ApplicationRecord
  belongs_to :user
  after_create :default_role 

  private 
  def default_role
    self.add_role(:coach) if self.roles.blank?

  end

end
