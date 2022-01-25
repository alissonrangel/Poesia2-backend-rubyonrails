class PoetrySerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :likes, :dislikes, :created_at, :user_id
  belongs_to :user
end
