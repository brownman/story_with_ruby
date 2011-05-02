# Requires an ANSI terminal!

st = "\033[7m"
en = "\033[m"

puts "all moms and dads r worring - might it be that our own san is really a gay ?"



#while true
#  print "str> "; STDOUT.flush; str = gets.chop
#  break if str.empty?
#  print "pat> "; STDOUT.flush; pat = gets.chop
#  break if pat.empty?

  #"i'm not gay"
  
  
  
  
 
  re = Regexp.new("f.*z")
#  ("/[i][gay]/")
#  str = "i already told you: I'm not gay!"
  #
  str = "foozbooze" 
  puts str.gsub(re,"#{st}\\&#{en}")

  re = Regexp.new("i..gay")

  #  "[i][am][not][gay]")
#  ("/[i][gay]/")
#  str = "i already told you: I'm not gay!"
  #
  str = "i am not gay"
#end


  puts str.gsub(re,"#{st}\\&#{en}")

