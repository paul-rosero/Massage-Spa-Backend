class Client < ApplicationRecord
    has_many :appointments
    has_many :massage_therapist, through: :appointments
end
