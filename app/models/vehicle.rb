class Vehicle < ApplicationRecord
  mount_uploader :file_name, FileUploader
end
