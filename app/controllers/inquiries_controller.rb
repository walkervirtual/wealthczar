class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
    inquiry = Inquiry.create(inquiry_params)
    redirect_to inquiry_path(inquiry)
  end

  def show
    @inquiry = Inquiry.find params[:id]
  end

  def index
    render layout: 'splash'
  end

  # def edit
  #   @Financial_Advisors = FinancialAdvisor.all
  # end

  private

  def inquiry_params
    params.require(:inquiry).permit(:service, :age, :status, :home, :job, :salary)
  end
  
  # def create
  # @Financial_Advisors = Financial_Advisor.create( financial_advisor_params )
  # end

  # private

  # # Use strong_parameters for attribute whitelisting
  # # Be sure to update your create() and update() controller methods.

  # def financial_advisor_params
  # params.require(:Financial_Advisor).permit(:avatar)
  # end
end


