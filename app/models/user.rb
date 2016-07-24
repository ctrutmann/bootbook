class User < ApplicationRecord
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :user_cohorts
  has_many :cohorts, through: :user_cohorts

  has_many :followers, through: :follower_follows, source: :follower
  has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"
  has_many :followees, through: :followee_follows, source: :followee
  has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"

  has_many :sent_conversations, class_name: 'Conversation', foreign_key: :sender_id
  has_many :received_conversations, class_name: 'Conversation', foreign_key: :recipient_id
  has_many :messages
  has_many :posts

  validates_presence_of :name, :email, :uid, :provider
  validates_uniqueness_of :email, :uid

  def self.create_with_omniauth(auth)
    p auth['info']
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
         user.profile_image = auth['info']['image'] || ""
         user.github = "https://github.com/#{auth['info']['nickname']}" || ""
      end
    end
  end

end
