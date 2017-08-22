class FieldSerializer < ActiveModel::Serializer
  attributes :id, :is_mine, :marked, :used, :x, :y
end
