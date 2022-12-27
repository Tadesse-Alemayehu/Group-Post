class Group < ApplicationRecord
  belongs_to :user
  has_many :user_groups
  has_many :posts
  def members_count
    self.user_groups.count
  end
  def posts_count
    self.posts.count
  end
  def last_active
    # TODO: return the last active date
    "not available"
  end
end
