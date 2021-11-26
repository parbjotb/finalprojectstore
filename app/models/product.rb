class Product < ApplicationRecord
  # attr_accessor :name, :price, :description
  has_one_attached :image
  # belongs_to :category
  # leaving validation out for now but this is what it would be
  # validates :name, :price, :description, presence: true
end
