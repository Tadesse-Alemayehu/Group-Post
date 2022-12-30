class Comment < ApplicationRecord
  validates :body, presence: {message: "comment body can't be blank"}
  belongs_to :user
  belongs_to :contents, polymorphic: true
  has_many :comments, as: :contents
end
