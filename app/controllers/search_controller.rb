class SearchController < ApplicationController
  def index
    @products = Product.search(params[:product]).sort_by_name
      .page(params[:page]).per Settings.search_size
  end
end
