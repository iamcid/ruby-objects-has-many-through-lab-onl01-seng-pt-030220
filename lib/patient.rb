class Patient
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
<<<<<<< HEAD
  def new_appointment(doctor, date)
=======
  def new_appointment(date, doctor)
>>>>>>> 6240ed362eb180b0bcaa37784f820efa826bc99a
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
end