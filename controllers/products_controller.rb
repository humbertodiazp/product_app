class ProductsController < ApplicationController
  def index
    @products = Mongo::QueryCache.cache do
      Product.collection.aggregate([
        { "$match" => { "items.tags": "electronics" } }
      ]).to_a
    end
  end
end
