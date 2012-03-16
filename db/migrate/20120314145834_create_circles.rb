class CreateCircles < ActiveRecord::Migration
  def change
    create_table :circles do |t|
      t.integer :event_id
      t.string :table

      t.timestamps
    end
  add_index :circles, :id

   add_index :circles, :event_id

  end
end
