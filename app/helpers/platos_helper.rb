module PlatosHelper

  def idtostring(number)
    idsToStrings = {"1" => "Odontología", "2" => "Derecho",
                    "3" => "Economía", "4" => "Agronomía", 
                    "5" => "Generales", "6" => "Educación",
                    "7" => "Sociales", "8" => "Comedor"}
    idsToStrings[number.to_s]
  end

  def numtodia(number)
    numToDia = {"1" => "Lunes", "2" => "Martes", "3" => "Miércoles", "4" => "Jueves", "5" => "Viernes", "6" => "Sábado"}
    numToDia[number.to_s]
  end

end
