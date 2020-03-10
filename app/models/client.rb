class Client < ApplicationRecord
  belongs_to :appointment
  has_one :massage_theapist, through: :appointment

  has_secure_password
  
end
