class PoetrySerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :likes, :dislikes, :image_url, :image_name, :created_at, :user_id
  belongs_to :user
end
