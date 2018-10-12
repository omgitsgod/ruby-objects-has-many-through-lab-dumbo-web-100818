class Doctor
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
  Appointment.new(date, self, patient)
  end

  def appointments
  Appointment.all.select do |blah|
    blah.doctor == self
  end
  end

  def patients
  appointments.collect do |x|
    x.patient
  end
  end

  def self.all
  @@all
  end
end
