class Interest < ApplicationRecord
  has_many :users, through: :user_interests
end
