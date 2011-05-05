class AddDefaultMigration < ActiveRecord::Migration
  def self.up
     change_column :users, :count, :float, :default => 1, :null => false
  end
end