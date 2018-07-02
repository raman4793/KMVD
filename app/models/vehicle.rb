class Vehicle < ApplicationRecord
  mount_uploader :file_name, FileUploader
  belongs_to :type
  has_many :parkings
  has_many :fines, through: :vehicle_fines
  has_many :vehicle_fines

  def fines

  end

  def parking
    self.parkings.find_by(valid: true)
  end

  def insurance_finable?
    if insurance_expiry_date < DateTime.now
      VehicleFine.before(Date.today).where(fine: Fine.find_by(reason: 'Insurance')).count == 0
    else
      false
    end
  end

  def pollution_finable?
    if insurance_expiry_date < DateTime.now
      VehicleFine.before(Date.today).where(fine: Fine.find_by(reason: 'Pollution')).count == 0
    else
      false
    end
  end
end
