class UnitBackend < ApplicationRecord
  validates :name, uniqueness: true
end
