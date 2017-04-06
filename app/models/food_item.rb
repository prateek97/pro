class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :price, presence: true
  has_many :orders
def image_url_or_default
	image_url.presence || "http://hagerstownpizzabrothers.com/wp-content/uploads/2014/12/small-spaghetti.jpg"

end
end
