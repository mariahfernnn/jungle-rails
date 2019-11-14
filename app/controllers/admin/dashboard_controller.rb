class Admin::DashboardController < ApplicationController

  def show
    @categories = Category.all.order(created_at: :desc)
    @products = Product.all.order(created_at: :desc)
  end

end
