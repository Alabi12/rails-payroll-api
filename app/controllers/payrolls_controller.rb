class PayrollsController < ApplicationController
  before_action :set_payroll, only: [:show, :update, :destroy]

  def index
    @payrolls = Payroll.all
    render json: @payrolls
  end

  def show
    render json: @payroll
  end

  def create
    @payroll = Payroll.new(payroll_params)
    if @payroll.save
      render json: @payroll, status: :created
    else
      render json: @payroll.errors, status: :unprocessable_entity
    end
  end

  def update
    if @payroll.update(payroll_params)
      render json: @payroll
    else
      render json: @payroll.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @payroll.destroy
    head :no_content
  end

  private

  def set_payroll
    @payroll = Payroll.find(params[:id])
  end

  def payroll_params
    params.require(:payroll).permit(:basic_salary, :allowance, :taxable_income, :pension_tier1, :pension_tier2, :pension_tier3, :income_tax, :net_pay)
  end
end
