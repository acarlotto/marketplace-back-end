class ListingSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price
end
