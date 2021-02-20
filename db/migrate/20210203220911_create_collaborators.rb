class CreateCollaborators < ActiveRecord::Migration[6.1]
  def change
    create_table :collaborators do |t|
      t.references :user, null: false, foreign_key: true
      t.references :business_title,  foreign_key: true
      t.references :office,  foreign_key: true

      t.timestamps
    end
  end
end
