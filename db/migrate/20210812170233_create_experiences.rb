class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.date :start_date
      t.date :end_date
      t.string :job_title
      t.string :company
      t.text :details
      t.integer :student_id

      t.timestamps
    end
  end
end