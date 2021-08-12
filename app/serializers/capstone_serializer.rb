class CapstoneSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url, :screenshot

  belongs_to :student
end
