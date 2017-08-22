class RankingSerializer < ActiveModel::Serializer
  attributes :id, :score, :name, :date
  def date
    object.created_at
  end
end
