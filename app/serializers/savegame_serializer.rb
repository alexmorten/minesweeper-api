class SavegameSerializer < ActiveModel::Serializer
  attributes :id, :name, :score, :size, :date
  def date
    object.created_at
  end
end
