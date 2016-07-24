class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    # Required fields
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :postal_code, :string
    add_column :users, :country, :string
    add_column :users, :profile_image, :string
    add_column :users, :is_graduate, :boolean, default: false
    add_column :users, :is_admin, :boolean, default: false

    # Oauth fields
    add_column :users, :uid, :integer
    add_column :users, :provider, :string

    # DBC fields
    add_column :users, :love, :string
    add_column :users, :quirk, :string
    add_column :users, :bio, :text
    add_column :users, :advice_to_students, :text
    add_column :users, :advice_to_graduates, :text

    # Notification preferences
    add_column :users, :willing_to_mentor,:boolean, default: true
    add_column :users, :willing_to_collaborate,:boolean, default: true

    # Employment fields
    add_column :users, :employment_status, :string
    add_column :users, :employer, :string
    add_column :users, :role, :string

    # Social links fields
    add_column :users, :linkedin, :string
    add_column :users, :github, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :employ, :string
    add_column :users, :personal_website, :string

    # Demographic fields
    add_column :users, :female_scholarship, :boolean, default: false
    add_column :users, :poc_scholarship, :boolean, default: false
    add_column :users, :lgbtq_scholarship, :boolean, default: false
    add_column :users, :veteran_scholarship, :boolean, default: false
    add_column :users, :prior_coding_experience, :string

  end
end
