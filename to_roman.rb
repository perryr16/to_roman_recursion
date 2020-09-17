# M=1000, CM=900, D=500, CD=400,
# C=100, XC=90, L=50, XL=40,
# X=10, IX=9, V=5, IV=4, I=1
require 'pry'
def to_roman(num, roman = "")
  return roman if num == 0
  if num >= 1000
    num -= 1000
    roman += "M"
  elsif num >= 900
    num -= 900
    roman += "CM"
  elsif num >= 500
    num -= 500
    roman += "D"
  elsif num >= 400
    num -= 400
    roman += "CD"
  elsif num >= 100
    num -= 100
    roman += "C"
  elsif num >= 90
    num -= 90
    roman += "XC"
  elsif num >= 50
    num -= 50
    roman += "L"
  elsif num >= 40
    num -= 40
    roman += "XL"
  elsif num >= 10
    num -= 10
    roman += "X"
  elsif num >= 9
    num -= 9
    roman += "IX"
  elsif num >= 5
    num -= 5
    roman += "V"
  elsif num >= 4
    num -= 4
    roman += "IV"
  elsif num >= 1
    num -= 1
    roman += "I"
  end
  to_roman(num, roman)
end

puts '-- CXXVIII --'
puts to_roman(128)   # should return
puts '-- MM --'
puts to_roman(2000)  # should return "MM"
puts '-- MMXVII --'
puts to_roman(2017)  # should return "MMXVII"
puts '-- MCMXCIX --'
puts to_roman(1999)  # should return "MCMXCIX"
puts '***************'

def to_roman(num)
  return "" if num == 0
  if num >= 1000
    "M" + to_roman(num-1000)
  elsif num >= 900
    "CM" + to_roman(num-900)
  elsif num >= 500
    "D" + to_roman(num-500)
  elsif num >= 400
    "CD" + to_roman(num-400)
  elsif num >= 100
    "C" + to_roman(num-100)
  elsif num >= 90
    "XC" + to_roman(num-90)
  elsif num >= 50
    "L" + to_roman(num-50)
  elsif num >= 40
    "XL" + to_roman(num-40)
  elsif num >= 10
    "X" + to_roman(num-10)
  elsif num >= 9
    "IX" + to_roman(num-9)
  elsif num >= 5
    "V" + to_roman(num-5)
  elsif num >= 4
    num -= 4
    "IV" + to_roman(num-4)
  elsif num >= 1
    "I" + to_roman(num-1)
  end
end

puts '-- CXXVIII --'
puts to_roman(128)   # should return
puts '-- MM --'
puts to_roman(2000)  # should return "MM"
puts '-- MMXVII --'
puts to_roman(2017)  # should return "MMXVII"
puts '-- MCMXCIX --'
puts to_roman(1999)  # should return "MCMXCIX"
puts '***************'
