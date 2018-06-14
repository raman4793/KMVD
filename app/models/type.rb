class Type < ApplicationRecord
	has_many :vehicles
	has_many :spots
end
