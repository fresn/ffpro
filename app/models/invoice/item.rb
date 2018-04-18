class Invoice::Item < ApplicationRecord
  belongs_to :ProductOnSell
end
