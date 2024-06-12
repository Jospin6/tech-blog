class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.date :published_at
      t.integer :status
      t.string :cover_image_url
      t.string :tags
      t.string :slug

      t.timestamps
    end
  end
end
