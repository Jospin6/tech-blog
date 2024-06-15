class Post < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  mount_uploader :cover_image_url, ImageUploader
end
