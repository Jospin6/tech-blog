class Post < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  mount_uploader :cover_image_url, CoverImageUrlUploader

  before_save :generate_slug

  def generate_slug
    self.slug = title.parameterize
  end
  

end
