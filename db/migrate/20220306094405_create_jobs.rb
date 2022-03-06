class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :avatar
      t.text :description
      t.string :company
      t.string :url
      t.string :location
      t.string :job_type
      t.string :job_level
      t.string :job_author
      t.boolean :remote
      t.string :apply_url
      t.integer :user_id

      t.timestamps
    end
  end
end
