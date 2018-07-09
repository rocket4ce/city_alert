class Alert < ApplicationRecord
  mount_base64_uploader :imagen, ImageUploader
end
