# == Schema Information
#
# Table name: airplanes
#
#  id         :bigint           not null, primary key
#  planeNo    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  row        :integer
#  columns    :text
#

class Airplane < ApplicationRecord
    has_many :flights
end
