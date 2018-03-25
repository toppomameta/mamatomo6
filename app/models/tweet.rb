class Tweet < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :nick_name, presence: true
end
