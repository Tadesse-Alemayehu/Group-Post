class Post < ApplicationRecord
  validates :title, presence: {message: "Post title can't be blank"}
  validates :body, presence: {message: "Post body can't be blank"}
  belongs_to :user
  belongs_to :group
  has_many :comments, as: :contents
end
