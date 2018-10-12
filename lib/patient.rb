class Patient
  @@all = []
  def initialize(name)
@name = name
@@all << self
  end
def new_appointment(doctor, date)
Appointment.new(self, doctor, date)
end
def appointments
Appointment.all.select do |x|
  x.patient = self
end
end
def doctors
  appointments.collect do |x|
    x.doctor
  end
end
  def self.all
    @@all
  end
end
