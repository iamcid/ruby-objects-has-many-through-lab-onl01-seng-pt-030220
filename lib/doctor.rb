class Doctor
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
  def new_appointment(patient, date)
=======
  def new_appointment(date, patient)
>>>>>>> 6240ed362eb180b0bcaa37784f820efa826bc99a
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def patients
    appointments.map do |appointment|
<<<<<<< HEAD
      appointment.patient
=======
      appointment.doctor
>>>>>>> 6240ed362eb180b0bcaa37784f820efa826bc99a
    end
  end
end