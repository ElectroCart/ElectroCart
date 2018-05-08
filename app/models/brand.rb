class Brand < ApplicationRecord
  
  has_many :mobile_details
  has_many :tv_details
  has_many :laptop_details
  has_many :acs
  has_many :fridges
  has_many :cameras
  has_many :microwaves
end
