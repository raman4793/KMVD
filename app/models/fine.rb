class Fine < ApplicationRecord
  has_many :vehicle_fines
  def name
    reason
  end
end
