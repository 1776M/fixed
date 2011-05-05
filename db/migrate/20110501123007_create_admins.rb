class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.float :cost_of_debt
      t.float :risk_premium
      t.float :interest_rate_risk
      t.float :ebitda_risk

      t.timestamps
    end
  end

  def self.down
    drop_table :admins
  end
end
