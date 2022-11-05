class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :value
      t.references :user, null: false, foreign_key: true
      t.references :record_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
