class CreateInterviewProcesses < ActiveRecord::Migration[6.1]
  def change
    create_table :interview_processes do |t|
      t.references :interview_mileston, null: false, foreign_key: true
      t.string :process_name
      t.integer :ranking

      t.timestamps
    end
  end
end
