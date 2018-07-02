class Parking < ApplicationRecord
  belongs_to :spot
  belongs_to :vehicle

  after_create do
    self.vehicle.parked=true
    self.vehicle.save
    self.spot.availability=false
    self.spot.save

    if self.vehicle.insurance_finable?
      VehicleFine.create(vehicle: self.vehicle, fine: Fine.find_by(reason: 'Insurance'))
    end

    if self.vehicle.pollution_finable?
      VehicleFine.create(vehicle: self.vehicle, fine: Fine.find_by(reason: 'Pollution'))
    end
  end

  after_update do
    if self.occupied?
    else
      self.vehicle.parked=false
      self.vehicle.save
      self.spot.availability=true
      self.spot.save
    end
  end
end
