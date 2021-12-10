class User < ActiveRecord::Base
    has_many :locations
    has_many :donations, through: :locations
end