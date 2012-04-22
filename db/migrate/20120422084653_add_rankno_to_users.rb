class AddRanknoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rankno, :integer

  end
end
