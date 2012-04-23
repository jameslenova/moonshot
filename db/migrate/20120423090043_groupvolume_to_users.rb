class GroupvolumeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :groupvolume, :float

  end

end
