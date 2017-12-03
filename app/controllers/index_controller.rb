class IndexController < ApplicationController
  def index
    @products = Product.search_full_text(params[:name])
  end
end
