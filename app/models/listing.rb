class Listing < ApplicationRecord
  belongs_to :coach
  has_one_attached :picture
end
