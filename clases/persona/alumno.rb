require_relative "usuario.rb"

class Alumno < Usuario
  attr_accessor :codAlumno
  
  def initialize(codAlumno, apellidoPaterno, apellidoMaterno, nombre)
    @codAlumno = codAlumno
    @apellidoPaterno = apellidoPaterno
    @apellidoMaterno = apellidoMaterno
    @nombre = nombre
    @maxLibro = 5
    @maxTiempo = 7
  end

end
