#subclass Bombay inherits from Mechacats super-class
class Bombay < Mechacats
  def speed
    #call speed computation(catnip)method and find maximum 
    return [0, compute_catnip_speed].max 
  end
end

#subclass Somali inherits from Mechacats super-class
class Somali < Mechacats
