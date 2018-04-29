class CreateSpecies < ActiveRecord::Migration[5.1]

  disable_ddl_transaction!
  def change
    create_table :species do |t|
      t.citext :species_code,     null: false
      t.string :species_name,     null: false
      t.citext :foilage_strategy, null: false
      t.citext :foilage_type,     null: false
      t.citext :taxonomy,         null: false

      t.timestamps
    end
    add_index :species, :species_code, unique: true, algorithm: :concurrently
  end
end
