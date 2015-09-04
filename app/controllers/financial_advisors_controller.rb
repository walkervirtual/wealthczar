class FinancialAdvisorsController < ApplicationController
  def new
  @financial_advisors = Financial_Advisors.new
  end

  def index
    @financial_advisors = Financial_Advisors.all
  end

  def show
    @financial_advisors = Financial_Advisors.find params[:id]
  end


  def edit
    @Financial_Advisors = FinancialAdvisors.find params[:id]
  end

  def create
  @Financial_Advisors = Financial_Advisors.create( financial_advisor_params )
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def financial_advisor_params
  params.require(:Financial_Advisor).permit(:avatar)
  end
end
