# == Schema Information
#
# Table name: flights
#
#  id          :bigint           not null, primary key
#  dateTime    :datetime
#  origin      :text
#  destination :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  airplane_id :bigint
#

class Flight < ApplicationRecord
    has_and_belongs_to_many :users, :optional => true
    belongs_to :airplane, :optional => true
end
