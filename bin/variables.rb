#! /usr/bin/env ruby
puts "\n\nhow not to get sex ? -  guide to rubyiest \n\n"

 


class Woman
  @@want_sex= false
  @want_sex = false
  @kind = 'Woman'  

  def initialize(want)
            puts 'initialize..' 
            @want_sex = false || want
  end

  def self.want_sex 
    #$puts self.Class
    puts  'kind: ' + kinda()
    #puts  'answer:' + @@want_sex_static_boolean.to_s
    puts 'answer: ' + @@want_sex.to_s
    puts
    puts

  end
  def self.kinda
    return  'kind is is: ' + @kind
  end
end

puts Woman.want_sex


  class Hooker < Woman
  
    
  attr_accessor :money
  def initialize()
    
  end
    
  @kind = 'Hooker'
  def self.want_sex #oppoiste from Woman
    @@want_sex = !@@want_sex
    super
  end
end
   
puts Hooker.want_sex   

class Smart_Hooker < Hooker
  @kind = 'Smart_Hooker'
  def self.want_sex_for_money(moneyy=0) #no change to the static var
    if(moneyy > 0)
      # 
      self.superclass.superclass.want_sex #show @kind of 
    else
     #   super
        puts 'how much money u\'ve got ?'
        
      end
  end
end
puts Smart_Hooker.want_sex_for_money(10)


#class Invastigative_Hooker < Hooker
  #def self.want_sex
    #def initialize 
      #if(money > 0)
        #!super
      #else
        #puts  'how old r u ?, i could be your mother! - get off!'
      #end

    #end

  #end
#end
puts
puts
puts 'class vars: ' + Woman.class_variables.to_s # => @@sides
puts 'instance vars: ' + Woman.instance_variables.to_s # => @sides
 


def deep_copy
 
puts 'horney guy: lets c how smart they r today !'
h1 = Hooker.new      #=> #<Klass:0x401b3a38>
   h1.money = 100

puts "horney guy: how much do u take miss 1 ?"

puts "hooker1: for u #{h1.money}"

puts "our guy corssing the road to another hooker "

puts "horney guy: how much do u take miss 2 ?"

   h2 = h1.clone       #=> #<Klass:0x401b3998 @str="Hello">
h2.money = h2.money - 10

puts "hooker2: for u its #{h2.money}"
puts "horney guy: its a deal!"
puts "hooker1: hey! you! come over here - for u its only #{h1.money} "
puts 'extra info:'
h1.inspect         

h2.inspect      
#puts 'explain: '
end








deep_copy()
#but shallow copy for strings:
 class Klass
      attr_accessor :str
 end
   s1 = Klass.new      #=> #<Klass:0x401b3a38>
   s1.str = "Hello"    #=> "Hello"
   s2 = s1.clone       #=> #<Klass:0x401b3998 @str="Hello">
   s2.str[1,4] = "i"   #=> "i"
   s1.inspect          #=> "#<Klass:0x401b3a38 @str=\"Hi\">"
   s2.inspect          #=> "#<Klass:0x401b3998 @str=\"Hi\">"
 
 


#Adds to obj the instance methods from each module given as a parameter.

   module Mod
     def hello
       "Hello from Mod.\n"
     end
   end

   class Klass
     def hello
       "Hello from Klass.\n"
     end
   end

   k = Klass.new
   k.hello         #=> "Hello from Klass.\n"
   k.extend(Mod)   #=> #<Klass:0x401b3bc8>
   k.hello         #=> "Hello from Mod.\n"
  
   
   
   
   def getBinding(param)
     puts 'new params:'+ param.to_s
     return binding
   end
   b0 = getBinding("hello")
   b0.eval("param")   #=> "hello"
   
   puts '--'
   b1  = getBinding("3+3")
   b1.eval("param")   #=> "hello"
   puts '--'
   b2  = getBinding(3+3)
   b2.eval("param")   #=> "hello"
    
