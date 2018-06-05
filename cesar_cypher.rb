def cesar_cipher(stringy,shift)

dd =stringy.downcase.split("").map do |strin|

    kk = strin.ord+shift
      if strin.ord <  97 && strin.ord > 26
        strin = strin
       elsif strin.ord+shift > 122
       strin = strin.ord+shift - 123 + 97
       strin.chr
else
  jj = kk.chr
 jj
      end
  end
return  dd.join.capitalize
end

cesar_cipher("What a string!",5)
