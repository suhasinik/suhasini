class Appointment < ActiveRecord::Base
	belongs_to :physician, foreign_key: "physician_id"
    belongs_to :patient, foreign_key: "patient_id"
end
