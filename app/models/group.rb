class Group < ApplicationRecord
  validates :name, presence: {message: "Group name can't be blank"}
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
    active_days=(Time.now-self.updated_at.to_time)/1.day
    if active_days < 0.1
      active_days=(active_days*24*24).round(2).to_i.to_s+" minutes"
    elsif active_days  < 1
      active_days=(active_days*24).round(2).to_i.to_s+" hours"
    else
    return active_days.round(2).to_i.to_s+" days"
    end
    active_days
  end
end
