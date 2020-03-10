class MassageTherapist < ApplicationRecord
  belongs_to :appointment
  has_one :client, through: :appointment
end
