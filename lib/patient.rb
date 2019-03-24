class Patient
@@all = []
attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|a| a.patient == self}
  end

end
