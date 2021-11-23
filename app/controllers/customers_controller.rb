class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    # don't think i need a show page for customers, that's on active admin
  end
end
