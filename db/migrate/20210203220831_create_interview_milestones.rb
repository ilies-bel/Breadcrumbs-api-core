class CreateInterviewMilestones < ActiveRecord::Migration[6.1]
  def change
    create_table :interview_milestones do |t|
      t.references :interview_process,  foreign_key: true
      t.references :interview_type,  foreign_key: true
      t.string :milestone_name

      t.timestamps
    end
  end
end
