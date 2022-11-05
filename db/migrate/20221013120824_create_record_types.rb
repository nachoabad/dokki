class CreateRecordTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :record_types do |t|
      t.string :name
      t.integer :input_type
      t.references :template, null: false, foreign_key: true

      t.timestamps
    end
  end
end
