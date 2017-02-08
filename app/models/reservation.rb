class Reservation < ApplicationRecord
  belongs_to :customer, class_name: "User", foreign_key: "user_id"
  belongs_to :reserved_restaurant, class_name: "Restaurant", foreign_key: "restaurant_id"
end
