json.extract! post, :id, :title, :content, :user_id, :published_at, :status, :cover_image_url, :tags, :slug, :created_at, :updated_at
json.url post_url(post, format: :json)
