class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :homepage

      t.timestamps
    end
add_index :locations, [:name]
add_index :locations , [:id]

  end
end
