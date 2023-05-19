require "test_helper"

class PayrollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payroll = payrolls(:one)
  end

  test "should get index" do
    get payrolls_url
    assert_response :success
  end

  test "should get new" do
    get new_payroll_url
    assert_response :success
  end

  test "should create payroll" do
    assert_difference("Payroll.count") do
      post payrolls_url, params: { payroll: { allowance: @payroll.allowance, basic_salary: @payroll.basic_salary, income_tax: @payroll.income_tax, net_pay: @payroll.net_pay, pension_tier1: @payroll.pension_tier1, pension_tier2: @payroll.pension_tier2, pension_tier3: @payroll.pension_tier3, taxable_income: @payroll.taxable_income } }
    end

    assert_redirected_to payroll_url(Payroll.last)
  end

  test "should show payroll" do
    get payroll_url(@payroll)
    assert_response :success
  end

  test "should get edit" do
    get edit_payroll_url(@payroll)
    assert_response :success
  end

  test "should update payroll" do
    patch payroll_url(@payroll), params: { payroll: { allowance: @payroll.allowance, basic_salary: @payroll.basic_salary, income_tax: @payroll.income_tax, net_pay: @payroll.net_pay, pension_tier1: @payroll.pension_tier1, pension_tier2: @payroll.pension_tier2, pension_tier3: @payroll.pension_tier3, taxable_income: @payroll.taxable_income } }
    assert_redirected_to payroll_url(@payroll)
  end

  test "should destroy payroll" do
    assert_difference("Payroll.count", -1) do
      delete payroll_url(@payroll)
    end

    assert_redirected_to payrolls_url
  end
end
