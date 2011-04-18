require 'rainbow' #https://github.com/sickill/rainbow

#      :black => 0,
#      :red => 1,
#      :green => 2,
#      :yellow => 3,
#      :blue => 4,
#      :magenta => 5,
#      :cyan => 6,
#      :white => 7,
#      :default => 9,

#lesson 1
DEBUGV = true # help me debug the opengl complexities.

def pd(str)#debug notes - print if DEBUGV is active
  puts ("" + str).center(80).underline.bright.background(:white).foreground(:red) if DEBUGV==true
end

def pg(str)

  puts str.center(80).underline.bright.foreground(:white)
end

def pst(str)

  puts ("STORY: " + str).underline.bright.foreground(:cyan)
end
def pau(str)

  puts ("AUTHOR: " + str).underline.bright.foreground(:yellow)
end


