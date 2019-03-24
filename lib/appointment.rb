class Appointment
@@all = []
attr_accessor :patient, :date, :Doctor

def initialize(patient, date, doctor)
  @patient = patient
  @date = date
  @doctor = doctor
  @@all << self
end
end 
