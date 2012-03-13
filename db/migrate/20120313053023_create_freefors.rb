class CreateFreefors < ActiveRecord::Migration
  def change
    create_table :freefors do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
    add_index :freefors , :user_id
    add_index :freefors , :event_id
    add_index :freefors , [:user_id, :event_id], unique: true

  end
end
