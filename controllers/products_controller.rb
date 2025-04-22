class ProductsController < ApplicationController
  def index
    @products = Mongo::QueryCache.cache do
      Product.collection.aggregate([
        { "$match" => { category: "Electronics" } }
      ]).to_a
    end
  end
end