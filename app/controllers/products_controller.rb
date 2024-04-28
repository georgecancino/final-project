class ProductsController < ApplicationController
  def index
    puts "Params: #{params.inspect}"
    if params[:category] == 'Show All'
      @products = Product.all
    elsif params[:category].present?
      @category = Category.find_by(name: params[:category])
      puts "Category: #{@category.inspect}"
      @products = @category.products if @category
    else
      @products = []
    end
  end
end
