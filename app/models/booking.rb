# == Schema Information
#
# Table name: bookings
#
#  id         :bigint           not null, primary key
#  user_id    :integer
#  date       :date
#  retail_id  :integer
#  service_id :integer
#  iscancel   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Booking < ApplicationRecord
end
