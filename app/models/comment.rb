class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :contents, polymorphic: true
  has_many :comments, as: :contents
end
