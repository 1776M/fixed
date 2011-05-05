class CreateFinances < ActiveRecord::Migration
  def self.up
    create_table :finances do |t|
      t.float :ebitda
      t.float :debt
      t.integer :client_id

      t.timestamps
    end
      add_index :finances, :client_id
  end

  def self.down
    drop_table :finances
  end
end
