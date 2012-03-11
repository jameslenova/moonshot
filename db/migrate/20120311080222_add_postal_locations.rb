class AddPostalLocations < ActiveRecord::Migration
  def change
    add_column :locations, :postal, :string
  end

end
