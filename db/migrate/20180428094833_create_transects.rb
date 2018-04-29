class CreateTransects < ActiveRecord::Migration[5.1]
  
  disable_ddl_transaction!
  def change
    create_table :transects do |t|
      t.citext :transect_code,  null: false
      t.string :transect_name,  null: false
      t.integer :target_slope,  null: false
      t.integer :target_aspect, null: false

      t.timestamps
    end
    add_index :transects, :transect_code, unique: true, algorithm: :concurrently
  end
end
