class UnitBackend < ApplicationRecord
  validates :name, uniqueness: true
  validates :ToDefaultRate, numericality: {:greater_than_or_equal_to => 0}
  validates :kind, inclusion: {in: ["Length", "Volume"], message: "Kind must be one fo Length or Volume or Mass"}
end
