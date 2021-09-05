






the solutions for others, i like it.


NUMERALS = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
               L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }

def solution(number)
  return '' if number <= 0
  NUMERALS.each { |key, val| return key.to_s + solution(number - val) if number >= val }
end


------------------------------------------
def solution(number)
  letters = %w[M CM D CD C XC L XL X IX V IV I]
  numbers = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  values = letters.zip(numbers)

  n=number
  c=0
  values.map{|l,v| c, n = n.divmod v; l*c}.join ''
end
------------------------------------------
NUMS = [[1000, "M"], [900, "CM"], [500, "D"], [400, "CD"], [100, "C"], [90, "XC"], [50, "L"], [40, "XL"], [10, "X"], [9, "IX"], [5, "V"], [4, "IV"], [1, "I"]]

def solution num
  str = ""
  NUMS.each do |number, sub|
    while num >= number
      str << sub
      num -= number
    end
  end
  str
end
------------------------------------------
def solution(number)
  pairs ={1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}
  i = number
  pairs.reduce("") do | result, (key, val)|
    while i >= key
      i -= key
      result << val
    end
    result
  end
end
------------------------------------------
