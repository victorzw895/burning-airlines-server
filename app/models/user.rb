class User < ApplicationRecord
    has_and_belongs_to_many :flights, :optional => true
end
