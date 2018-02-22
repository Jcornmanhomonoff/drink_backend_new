class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :alcohol, :mixers, :directions
end
