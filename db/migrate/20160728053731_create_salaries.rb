class CreateSalaries < ActiveRecord::Migration[5.0]
  def change
    create_table :salaries do |t|
      t.string :salary
      t.string :job_since_dbc
      t.string :year
      t.string :quarter
    end
  end
end
