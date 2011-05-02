puts 'get the value of @secret in the context of vX'   
class Demo

     def initialize(n)
       @secret = n
     end
     def getBinding
       return binding()
     end
   end

   k1 = Demo.new(99)
   b1 = k1.getBinding
   k2 = Demo.new(-3)
   b2 = k2.getBinding

p   eval("@secret", b1)   #=> 99
puts   eval("@secret", b2)   #=> -3
eval("@secret").inspect     #=> nil

