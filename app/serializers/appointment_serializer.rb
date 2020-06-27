class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :modality, :date_and_time, :special_request
  belongs_to :massage_therapist
  belongs_to :client

end
