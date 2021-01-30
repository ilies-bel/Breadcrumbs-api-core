class CreateInterviewTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :interview_types do |t|
      t.references :business_field, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.integer :estimated_time_length

      t.timestamps
    end
  end
end
