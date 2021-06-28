class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :author, type: String
  field :image_url, type: String
  field :published, type: Mongoid::Boolean
  field :content, type: String
end
