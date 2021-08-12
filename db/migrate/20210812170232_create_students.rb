class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.text :bio
      t.string :linkedin_url
      t.string :twitter_handle
      t.string :website
      t.string :resume_url
      t.string :github_url
      t.string :photo_url

      t.timestamps
    end
  end
end
