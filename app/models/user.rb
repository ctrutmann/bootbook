class User < ApplicationRecord
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :posts
  has_many :user_cohorts
  has_many :cohorts, through: :user_cohorts

  has_many :followers, through: :follower_follows, source: :follower
  has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"

  has_many :followees, through: :followee_follows, source: :followee
  has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"

  # def self.from_omniauth(auth)
  #   where(provider:auth.provider, uid:auth.uid).first_or_create do |user|
  #     user.provider = auth.provider
  #     user.uid = auth.uid
  #     user.email = auth.info.email
  #     user.password = Devise.friendly_token[0,20]
  #   end
  # end
end
