class Patient
  attr_accessor :name
  @appointments = []
  @@all = []

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor,date)
    new_appointment = Appointment.new(self,doctor,date)
    @appointments << new_appointment
  end
  
  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end
end