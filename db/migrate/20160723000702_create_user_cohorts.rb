class CreateUserCohorts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_cohorts do |t|

      t.timestamps
    end
  end
end
