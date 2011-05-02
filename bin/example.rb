   class Klass
      attr_accessor :str
   end
   s1 = Klass.new      #=> #<Klass:0x401b3a38>
   s1.str = "Hello"    #=> "Hello"
   s2 = s1.clone       #=> #<Klass:0x401b3998 @str="Hello">
   s2.str[1,4] = "i"   #=> "i"
   s1.inspect          #=> "#<Klass:0x401b3a38 @str=\"Hi\">"
   s2.inspect          #=> "#<Klass:0x401b3998 @str=\"Hi\">"

