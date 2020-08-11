class AddUserToCoaches < ActiveRecord::Migration[6.0]
  def change
    add_reference :coaches, :user, foreign_key: true
  end
end
