class CustomersController < ApplicationController
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:notice] = "customer added success"
      flash[:color] = "valid"
    else
      flash[:notice] = "failed to add customer"
      flash[:color] = "invalid"
    end
    render "new"
  end

  def customer_params
    params.require(:customer).permit(:username, :password, :province)
  end


  def index
    @customers = Customer.all
  end

  def show
    # don't think i need a show page for customers, that's on active admin
  end
end
