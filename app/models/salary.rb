class Salary < ApplicationRecord
  validates_presence_of :salary, :year, :quarter, :job_since_dbc
end
