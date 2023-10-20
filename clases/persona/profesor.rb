require_relative "usuario.rb"

class Profesor < Usuario
  @@maxLibro = 8
  @@maxTiempo = 3*7
  attr_accessor :codProfesor

  def initialize(codProfesor, apellidoPaterno, apellidoMaterno, nombre)
    @codProfesor = codProfesor
    @apellidoPaterno = apellidoPaterno
    @apellidoMaterno = apellidoMaterno
    @nombre = nombre

  end
end
