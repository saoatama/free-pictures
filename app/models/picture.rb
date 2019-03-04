class Picture < ApplicationRecord
  belongs_to :genre
  mount_uploader :url, ImageUploader
end
