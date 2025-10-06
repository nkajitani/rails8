class Post < ApplicationRecord
  mount_uploader :image, ::ImageUploader

  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
