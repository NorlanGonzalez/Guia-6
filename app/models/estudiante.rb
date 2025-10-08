class Estudiante < ApplicationRecord
  # Validar que todos los campos estén llenos
  validates :nombres, :apellidos, :carrera, :carnet, :fecha_nacimiento, :edad, :celular, presence: true
  
  # Validar que el celular solo contenga números
  validates :celular, numericality: { only_integer: true, message: "solo debe contener numeros" }

end
