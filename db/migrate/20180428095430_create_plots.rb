class CreatePlots < ActiveRecord::Migration[5.1]
  
  disable_ddl_transaction!
  def change
    create_table :plots do |t|
      t.citext   :plot_code,        null: false
      t.string   :plot_name,        null: false
      t.integer  :plot_slope
      t.integer  :plot_aspect
      t.integer  :plot_elevation_m, null: false
      t.decimal  :plot_latitude,    precision: 12, scale: 8, null: false
      t.decimal  :plot_longitude,   precision: 12, scale: 8, null: false
      t.references :transect,       foreign_key: true

      t.timestamps
    end
    add_index :plots, :plot_code, unique: true, algorithm: :concurrently
    # add_index :plots, [:plot_latitude, :plot_longitude], unique: true

  end
end
