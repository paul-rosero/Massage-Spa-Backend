class Appointment < ApplicationRecord
  belongs_to :massage_therapist
  belongs_to :client

end
