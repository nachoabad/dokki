class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :slug
      t.references :template, null: false, foreign_key: true
      t.index :slug, unique: true

      t.timestamps
    end
  end
end
