class AddGithubOrgToCohorts < ActiveRecord::Migration[5.0]
  def change
    add_column :cohorts, :github_org, :string
  end
end
