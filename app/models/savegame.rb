class Savegame < ApplicationRecord
  has_many :fields, dependent: :destroy
end
