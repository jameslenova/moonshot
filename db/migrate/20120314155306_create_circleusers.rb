class CreateCircleusers < ActiveRecord::Migration
  def change
    create_table :circleusers do |t|
      t.integer :circle_id
      t.integer :user_id

      t.timestamps
    end

add_index :circleusers, :circle_id
    add_index :circleusers, :user_id
    add_index :circleusers, [:user_id, :circle_id], :unique => true

  end
end
