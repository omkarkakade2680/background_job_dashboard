class CreateJobLogs < ActiveRecord::Migration[8.1]
  def change
    create_table :job_logs do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
