class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :content, polymorphic: true

  has_many :likes
  has_many :users, through: :likes

  validates :content_id, presence: true

  def username
    user.username
  end
end
