class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :date_applied
      t.string :job_title
      t.string :company_name
      t.string :status

      t.timestamps
    end
  end
end
