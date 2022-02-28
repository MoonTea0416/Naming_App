class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  has_many :comments, dependent: :destroy
  has_many :reactions, dependent: :destroy

  validates :user_id, presence: true
  validates :text, presence: true, length: { in: 1..200 }


end
