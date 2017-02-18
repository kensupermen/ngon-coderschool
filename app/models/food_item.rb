class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :orders
  validates :name, :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 1 }

  def image_url_or_default
    image_url.presence || "http://loremflickr.com/320/240/#{name.gsub(' ', '')}"
  end
end
