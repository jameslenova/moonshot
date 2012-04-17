class AddFloatpersonalvolumeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :personalvolume, :float

  end
end
