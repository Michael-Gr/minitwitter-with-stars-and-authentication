class Tweet < ApplicationRecord
  has_many :hearts
  has_many :retweets
  has_many :replies

  validates :text, presence: true, length: { maximum: 140 }, uniqueness: true
  validates :user_name, presence: true

end
