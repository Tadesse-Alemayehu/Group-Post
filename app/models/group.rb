class Group < ApplicationRecord
  belongs_to :user
  has_many :user_groups
end
