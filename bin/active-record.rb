#references:
#http://lucapette.com/irb/why-you-should-spend-some-time-configuring-irb/


#$LOAD_PATH.unshift File.expand_path('../lib', File.dirname(__FILE__))

#require 'shared'

require 'active_record'
require 'rainbow' #https://github.com/sickill/rainbow
# activerecord logging methods
# very useful for digging into
# queries
require 'logger'
#require 'activerecord' if rails?(2)

def enable_logger
    log_to(Logger.new(STDOUT))
end

def disable_logger
    log_to(nil)
end

def log_to(logger)
    ActiveRecord::Base.logger = logger
    ActiveRecord::Base.clear_active_connections!
end

# logging into console by default
enable_logger

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

def pdt(str)#debug notes - print if DEBUGV is active
  puts ("INFO:  " + str).center(80).underline.bright.background(:white).foreground(:blue) if DEBUGV==true
end

def pde(str)#debug notes - print if DEBUGV is active
  puts ("ERROR:  " + str).center(80).underline.bright.background(:white).foreground(:red) if DEBUGV==true
end




def pg(str)

  puts ("GOD: " + str).underline.bright.foreground(:green)
 # puts str.center(80).underline.bright.foreground(:white)
end

def pst(str)


  puts ("STORY: " + str).underline.bright.foreground(:cyan)
end
def pau(str)

  puts ("AUTHOR: " + str).underline.bright.foreground(:yellow)
end


# IRB.conf[:IRB_RC] = Proc.new do
#     ActiveRecord::Base.logger = Logger.new(STDOUT)
#     ActiveRecord::Base.instance_eval { alias :[] :find }
# end


#twiking irb: http://stackoverflow.com/questions/123494/whats-your-favourite-irb-trick
#http://www.tutorialspoint.com/ruby-on-rails/rails-callback-functions.htm
#
#
#http://www.tutorialspoint.com/ruby/ruby_exceptions.htm
#all event option
#http://apir.rubyonrails.org/
#life cycle of rest object: `http://api.rubyonrails.org/classes/ActiveResource/Base.html
#
#
#
#pst pa pg
#pd pau
pau "although strange it is.. \n But but in the absolute beginning of life.. \n there was sort of nothingness .. \n just a really realy small, unatended potential to do something. \n and high motivation to create an ape or finding a dinosaur skeleton"
class Monkey < ActiveRecord::Base
end


begin
  pau 'and god said:'
  pg  'let there be light !'

  pdt 'trying to connect to the database...'
  c1 = Monkey.new

rescue Exception => e
  pde e.message
  (e.methods - Object.new.methods).to_json #ommit derived methods
else
  puts "Congratulations-- no errors!"
ensure
  pau "but no light!"

end



class Person < ActiveRecord::Base

  establish_connection :adapter => 'sqlite3', :database => 'foobar.db'
  connection.create_table table_name, :force => true do |t|
    t.string :name
  end
end
someone =  Person.new(:name => 'Adam')
someone.save!
#bob = Person.create!(:name => 'bob')

puts Person.all.inspect
someone.destroy
puts Person.all.inspect

