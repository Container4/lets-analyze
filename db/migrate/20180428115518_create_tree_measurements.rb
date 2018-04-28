class CreateTreeMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :tree_measurements do |t|
      t.integer :circumfrence_cm
      t.date    :measurement_date, null: false
      t.citext  :subquadrat
      t.string  :tree_label
      t.references :species,       foreign_key: true
      t.references :plot,          foreign_key: true

      t.timestamps
    end
    add_index :tree_measurements, :circumfrence_cm
    add_index :tree_measurements, :measurement_date
    add_index :tree_measurements, [ :species_id, :plot_id,
                                    :subquadrat, :tree_label,
                                    :measurement_date ],
                                  unique: true,
                                  name: 'unique_tree_entries'
  end
end
