class Spot < ApplicationRecord
  belongs_to :type

  has_many :parkings
end
