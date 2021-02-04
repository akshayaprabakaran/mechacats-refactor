#subclass Bombay inherits from Mechacats super-class
class Bombay < Mechacats
  def speed
    #call speed computation(catnip)method and find maximum 
    return [0, compute_catnip_speed].max 
  end
  
  def color
    #Bombay cat's color computation block passed through super keyword
    super { 
      return 'black'
    }          
  end
end

#subclass Somali inherits from Mechacats super-class
class Somali < Mechacats
  def speed
    #if charge status true, return 0 else call speed computation(voltage)method
    return (@charged) ? 0 : compute_base_speed_for_voltage
  end
  
  def color
    #Somali cat's color computation block passed through super keyword
    super { 
      if @voltage > 5 
        return 'orange' 
      end
      if @voltage < 5 
        return 'orange and white' 
      end
      #if voltage == 5
      return nil    
    }
  end
end

#subclass Orange_tabby inherits from Mechacats super-class
class Orange_tabby < Mechacats
  def speed
    return @base_speed
  end
end
