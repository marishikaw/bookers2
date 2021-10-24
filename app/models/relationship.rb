class Relationship < ApplicationRecord
  # class_nameを指定することで存在しないモデル名？
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
