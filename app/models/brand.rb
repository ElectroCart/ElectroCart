class Brand < ApplicationRecord
  has_many :brand_categories
  has_many :mobile_details
end
