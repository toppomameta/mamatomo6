class Tweet < ApplicationRecord
  belongs_to :user
  # belongs_to :category
  mount_uploader :image, ImageUploader
  # validates :nick_name, presence: true
end
