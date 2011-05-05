class AddCountToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :count
  end

  def self.down
    remove_column :users, :count
  end
end
