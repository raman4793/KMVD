class Vehicle < ApplicationRecord
  mount_uploader :file_name, FileUploader
  belongs_to :type
  has_many :parkings
  has_many :vehicle_fines

  def fines

  end

  def parking
    self.parkings.find_by(valid: true)
  end
end
