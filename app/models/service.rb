# == Schema Information
#
# Table name: services
#
#  id            :bigint           not null, primary key
#  category_id   :integer
#  title         :string
#  description   :text
#  service_image :string
#  price         :integer
#  duration      :integer
#  ispopular     :boolean
#  retail_id     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#


class Service < ApplicationRecord
   belongs_to :retail
   belongs_to :category
   has_many :bookings
end
