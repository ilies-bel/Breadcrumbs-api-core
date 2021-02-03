class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :profile_picture_id
      t.string :mail
      t.string :role
      t.boolean :push_notification
      t.string :mail_notification
      t.string :boolean
      t.string :token

      t.timestamps
    end
    add_index :users, :mail, unique: true
  end
end
