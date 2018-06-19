class Vehicle < ApplicationRecord
  mount_uploader :file_name, FileUploader
  belongs_to :type
end
