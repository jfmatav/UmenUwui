module SnacksHelper

  def idtostring(number)
    idsToStrings = {"1" => "Odontología", "2" => "Derecho",
                    "3" => "Economía", "4" => "Agronomía", 
                    "5" => "Generales", "6" => "Educación",
                    "7" => "Sociales", "8" => "Comedor"}
    idsToStrings[number.to_s]
  end

end
