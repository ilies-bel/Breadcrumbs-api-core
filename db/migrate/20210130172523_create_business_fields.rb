class CreateBusinessFields < ActiveRecord::Migration[6.1]
  def change
    create_table :business_fields do |t|
      t.string :field_name
      t.string :description

      t.timestamps
    end
  end
end
