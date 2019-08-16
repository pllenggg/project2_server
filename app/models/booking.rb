class Booking < ApplicationRecord
    belongs_to :customer
    belongs_to :retail
    has_many :services, :through => :retail
end
