json.extract! payroll, :id, :basic_salary, :allowance, :taxable_income, :pension_tier1, :pension_tier2, :pension_tier3, :income_tax, :net_pay, :created_at, :updated_at
json.url payroll_url(payroll, format: :json)
