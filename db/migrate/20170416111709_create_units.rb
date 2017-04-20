class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.string :full_name
      t.references :departament, foreign_key: true
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
