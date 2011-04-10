#~ bundle exec ruby story.rb
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

pd "PLEASE NOTICE: to disable the RED NOTES - change DEBUGV to false"
pd "based on: http://www.ruby-doc.org/core/classes/Array.html"
pg "welcome to A simple story - I use it for self practicing Ruby"
pd 'Question : what is the different between single/double quotes?  '
pd "Answer: in single quotes string: when interpter bump into the \\ sign \n- it takes the next char as it is, without executing it !"
pd 'Question : how to manipulate string by converting it to array first ?'

puts "#{"\n"*4}"





pg"0nce upon a time there was..."


age =0
pg "a pretty empty story.."





#tmp.to_a
#.rotate!



#make a string: "file" by manipulating string: life###
tmp = "life".split(//)


tmp = tmp.reverse
tmp = tmp.rotate(1)
tmp = tmp.join
######################################################
pd 'evaluate parameters within a string by using double quotes: "bla bla.. #{..param..}"'
pst "i have no life, nor a #{tmp}!"
pd 'HOW the string "life" becomes "file" ?'

pau "(laugh): but u r only      #{age}      seconds old !"
pst "right.. but the time is passing and i already       #{age+=1}      seconds old"
pd 'WHAT type is the parameter: age ?'
pau "remember: we get older - only when we have bad thoughts - think #{"possitive".upcase} !"
pd 'HOW to transform lower to upper case letters ?'

pst "i have no dog and certainly not a #{"dog".reverse} to be fullfilled with"
pd 'HOW to transform string: dog to god?'





pst "..think possitive..".+ "that's sound interesting -but how ?"
pau "think about the future - like where u want to be.. and slowly and carefully - start steping towards it"
pst "but i even don't know how to start the story.."
pst "please" + " tip me !" * (3)


pd  'BUT.. what if we multiply string with a negative integer ?
     let\'s inspect the relevant function in the underlying C code : VALUE rb_str_times(VALUE str, VALUE times)
    ...if (len < 0) {
        rb_raise(rb_eArgError, "negative argument");
    }...'
pd "so let's make Ruby to catch our invalid operation and throw an error:"
begin
#  eval string
  pd "please" + " tip me !" * (-3)
rescue SyntaxError, NameError => boom
  pd "String doesn't compile: " + boom.to_s
rescue StandardError => bang
  pd "Error running script: " + bang.to_s
end

  # difference
pau "for example: if u think to yourself"
ary = ["i","am","not".upcase,"smart","so","i","can","not".upcase,"do","it"]

pau ary.join("  ")
ary_possitive = ary - ["NOT"]
pau ary_possitive.join("  ")
pau "think possitive.."
ary_thinkp = "think possitive ??".split(//) # to split each word in a sentence use: / /
ary_thinkp.length.times do |i|
        ary_thinkp[i].upcase!   if i%2==0
end
pst ary_thinkp.join
pau "com'on.. just try !"



thought = [ "no", "way", "i", "can" ]
str = thought.join("--")
pst "ha! to switch my moto from: " + str


   thought.collect! {|x|  if x.length>2; x + "!"; else x end} #add ! to words longer than 2 chars.

str = thought.join("  ")
pst "to: " + str
pst "got it !"
#pst thought[0].to_s.chomp
############################################
pd "GOOD BYE !"
str = '\n good \n bye'
p str
puts str
str = "\n good \n bye"
p str
puts str
p   "\tgoodbye\r\n".strip   #=> "goodbye"
'tgoodgye'.gsub('g','b')

###########################end

