class Tweet < ApplicationRecord
  has_many :hearts
  has_many :retweets
  has_many :replies
  belongs_to :user

  validates :text, presence: true, length: { maximum: 140 }, uniqueness: true
  validates :user_name, presence: true
end
