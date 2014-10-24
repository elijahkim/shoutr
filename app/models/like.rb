class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :shout

  validates :user_id, uniqueness: {scope: :shout}
end
