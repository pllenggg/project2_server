# == Schema Information
#
# Table name: retails
#
#  user_id      :integer          not null, primary key
#  address1     :string
#  address2     :string
#  suburb       :string
#  postcode     :string
#  phone        :string
#  email        :string
#  website      :string
#  facebook     :string
#  instagram    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  retail_image :string
#  retail_name  :string
#



class Retail < ApplicationRecord
    has_many :bookings
    has_many :customers, :through => :bookings
    has_many :services
    has_many :categories, :through => :services
end
