class Appointment < ApplicationRecord
    has_one :massage_therapist
    has_one :client
end
