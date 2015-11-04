class AddIndexToBars < ActiveRecord::Migration
  def change
    add_index :bars, :address, unique: true
  end
end
