require "application_system_test_case"

class PayrollsTest < ApplicationSystemTestCase
  setup do
    @payroll = payrolls(:one)
  end

  test "visiting the index" do
    visit payrolls_url
    assert_selector "h1", text: "Payrolls"
  end

  test "should create payroll" do
    visit payrolls_url
    click_on "New payroll"

    fill_in "Allowance", with: @payroll.allowance
    fill_in "Basic salary", with: @payroll.basic_salary
    fill_in "Income tax", with: @payroll.income_tax
    fill_in "Net pay", with: @payroll.net_pay
    fill_in "Pension tier1", with: @payroll.pension_tier1
    fill_in "Pension tier2", with: @payroll.pension_tier2
    fill_in "Pension tier3", with: @payroll.pension_tier3
    fill_in "Taxable income", with: @payroll.taxable_income
    click_on "Create Payroll"

    assert_text "Payroll was successfully created"
    click_on "Back"
  end

  test "should update Payroll" do
    visit payroll_url(@payroll)
    click_on "Edit this payroll", match: :first

    fill_in "Allowance", with: @payroll.allowance
    fill_in "Basic salary", with: @payroll.basic_salary
    fill_in "Income tax", with: @payroll.income_tax
    fill_in "Net pay", with: @payroll.net_pay
    fill_in "Pension tier1", with: @payroll.pension_tier1
    fill_in "Pension tier2", with: @payroll.pension_tier2
    fill_in "Pension tier3", with: @payroll.pension_tier3
    fill_in "Taxable income", with: @payroll.taxable_income
    click_on "Update Payroll"

    assert_text "Payroll was successfully updated"
    click_on "Back"
  end

  test "should destroy Payroll" do
    visit payroll_url(@payroll)
    click_on "Destroy this payroll", match: :first

    assert_text "Payroll was successfully destroyed"
  end
end
