require_relative "usuario.rb"

class Profesor < Usuario
  @@maxLibro = 8
  @@maxTiempo = 3*7
  attr_accessor :codProfesor

  def initialize(codProfesor, apellidoPaterno, apellidoMaterno, nombre)
    @codProfesor = codProfesor
    super(apellidoPaterno, apellidoMaterno, nombre)
  end

  def self.maxLibro
    @@maxLibro
  end

  def self.maxTiempo
    @@maxTiempo
  end

  def self.leer_json(diccionario)
    p =  Profesor.new(diccionario["codProfesor"], diccionario["apellidoPaterno"], diccionario["apellidoMaterno"], diccionario["nombre"])
    # ver si se puede usar herencia de metodo
    p.adeudaLib = diccionario["adeudaLib"]
    p.librosAdeudados = diccionario["librosAdeudados"]
    p.tieneLibSeparado = diccionario["tieneLibSeparado"]
    p.libReservados = diccionario["libReservados"]
    p.tiempo = diccionario["tiempo"]
    return p
  end

end
