class CreatePayrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :payrolls do |t|
      t.float :basic_salary
      t.float :allowance
      t.float :taxable_income
      t.float :pension_tier1
      t.float :pension_tier2
      t.float :pension_tier3
      t.float :income_tax
      t.float :net_pay

      t.timestamps
    end
  end
end
