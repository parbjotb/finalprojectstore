class ProductsController < ApplicationController

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "product added success"
      flash[:color] = "valid"
    else
      flash[:notice] = "failed to add item"
      flash[:color] = "invalid"
    end
    render "new"
  end

  def product_params
    params.require(:product).permit(:name, :price, :description)
  end

  def index
    @products = Product.all
  end

  def show
    # individual page, maybe make a loop that just pulls object name, price, whatever for just one item
    # for item in items, get item.name, item.price, item.description
    @product = Product.find(params[:id])
  end
end
