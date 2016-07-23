class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    # bio
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zipcode, :integer
    add_column :users, :country, :string
    add_column :users, :cohort_id, :integer
    add_column :users, :profile_image, :string
    add_column :users, :love, :string
    add_column :users, :quirk, :string
    add_column :users, :bio, :text
    add_column :users, :advice_to_students, :text
    add_column :users, :advice_to_graduates, :text
    add_column :users, :is_admin, :boolean, default: false
    add_column :users, :employment_status, :string
    add_column :users, :employer, :string
    add_column :users, :role, :string

    # social networks
    add_column :users, :linkedin, :string
    add_column :users, :github, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :employ, :string
    add_column :users, :personal_website, :string
    add_column :users, :uid, :integer
    add_column :users, :provider, :string
    # data information
    add_column :users, :female_scholarship, :boolean, default: false
    add_column :users, :poc_scholarship, :boolean, default: false
    add_column :users, :lgbtq_scholarship, :boolean, default: false
    add_column :users, :veteran_scholarship, :boolean, default: false
    add_column :users, :prior_coding_experience, :string

  end
end
