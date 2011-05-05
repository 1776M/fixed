class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.float :fixed
      t.float :float

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
