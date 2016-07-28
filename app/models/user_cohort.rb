class UserCohort < ApplicationRecord
  belongs_to :cohort
  belongs_to :user

  validates_uniqueness_of :user_id, scope: [:cohort_id]
end
