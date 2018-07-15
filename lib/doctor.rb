class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @patients = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, time)
    binding.pry
    patient = Patient.new(patient) 
    @patients << patient
    appointment = Appointment.new(patient, self, time)
  end
  
  
  def appointments
    Appointment.all.select {|a| a.doctor ==  self }
  end
  
  def patients
    @patients
  end

end