class Parking < ApplicationRecord
  belongs_to :spot
  belongs_to :vehicle
end
