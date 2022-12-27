class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups # can create many groups
  has_many :user_groups #can join many group

  def joined
    groups = []
    self.user_groups.each do |user_group|
      groups << user_group.group
    end
    groups
  end

  def join=(group)
    self.user_groups.create(group: group)
  end
end
