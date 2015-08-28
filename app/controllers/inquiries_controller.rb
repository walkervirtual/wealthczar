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

  def edit
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:service, :age, :status, :home, :job, :salary)
  end
end
