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

  after_save :set_graduation_date

  scope :city, -> (city) do
    where('(users.city = ?)', city)
  end

  scope :state, -> (state) do
    where('(users.state = ?)', state)
  end

  scope :country, -> (country) do
    where('(users.country = ?)', country)
  end

  scope :cohort, -> (cohort) do
    joins(:cohorts).where('cohorts.name = ?', cohort)
  end

  scope :campus, -> (campus) do
    joins(:cohorts).where('cohorts.campus = ?', campus)
  end

  scope :graduation_date, -> (graduation_date) do
    where('(users.graduation_date = ?)', graduation_date)
  end

  # # working but gets too many
  # scope :graduation_date, -> (graduation_date) do
  #   joins(:cohorts).where('cohorts.graduation_date = ?', graduation_date)
  # end

  scope :interest, -> (interest) do
    joins(:interests).where('interests.interest = ?', interest)
  end

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

  def set_graduation_date
    if self.is_graduate == true && self.cohorts.last && self.graduation_date != self.cohorts.last.graduation_date

      self.graduation_date = self.cohorts.last.graduation_date
      self.save
    end
  end
end
