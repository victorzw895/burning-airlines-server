class Flight < ApplicationRecord
    has_and_belongs_to_many :users, :optional => true
    belongs_to :airplane, :optional => true
end
