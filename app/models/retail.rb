
class Retail < ApplicationRecord
    has_many :bookings
    has_many :customers, :through => :bookings
    has_many :services
    has_many :categories, :through => :services
end
