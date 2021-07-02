class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :password, type: String
  field :email, type: String
  validates :email, presence: true, uniqueness: true
  has_many :posts
end
