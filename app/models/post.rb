class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :user_id, type: Integer
  field :title, type: String
  field :author, type: String
  field :image_url, type: String
  field :published, type: Mongoid::Boolean
  field :content, type: String
  belongs_to :user
end
