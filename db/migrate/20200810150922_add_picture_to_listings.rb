class AddPictureToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :picture, :string
  end
end
