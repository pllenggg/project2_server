# == Schema Information
#
# Table name: customers
#
#  user_id       :integer          not null, primary key
#  full_name     :string
#  profile_image :string
#  phone         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#


class Customer < ApplicationRecord
    has_many :bookings
end
