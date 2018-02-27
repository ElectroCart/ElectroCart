class Feature < ApplicationRecord
  belongs_to :product
  has_many :contents
end
