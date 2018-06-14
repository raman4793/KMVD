class VehicleFine < ApplicationRecord
  belongs_to :vehicle
  belongs_to :fine
end
