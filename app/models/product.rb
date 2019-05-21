class Product < ApplicationRecord
  has_many :orders
end

def self.find_products(search_term)
   if Rails.env.production?
     Product.where("name ilike ? OR description ilike ?", "%#{search_term}%", "%#{search_term}%")
   else
     Product.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
   end
 end
