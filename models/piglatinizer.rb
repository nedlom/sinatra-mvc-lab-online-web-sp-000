class PigLatinizer
  
  def piglatinize(string)
    x =  
    y = x.map do |s|
      a = s.split(/([AEIOUaeiou].*)/)
      if a.length == 1 
        a[0] + "way"
      elsif a[0] == ""
        a[1] + "way"
      else
        a[1] + a[0] + "ay"
      end
    end
    y.join(" ")
  end
  
end