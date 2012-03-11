class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :location_id
      t.datetime :time

      t.timestamps
    end
add_index :events, [:id]

  end
end
