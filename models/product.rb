class Product
  include Mongoid::Document
  include Mongoid::Timestamps


  store_in collection: "sales", database: "sample_supplies"

  field :items, type: Array
  field :storeLocation, type: String
  field :saleDate, type: Time
  field :customer, type: Hash
end
