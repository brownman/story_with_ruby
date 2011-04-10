

require 'active_record'

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
puts 'in the absolute beginning of life there was nothing .. just a potential..'
class Monkey < ActiveRecord::Base
end
 

begin
puts "and god said: let there be light"
#raise Exception, "but no light!"

c1 = Monkey.new

rescue Exception => e
      puts e.message
      (e.methods - Object.new.methods).to_json #ommit derived methods
else
     puts "Congratulations-- no errors!"
ensure
    puts "but no light!"

end



class Person < ActiveRecord::Base
    establish_connection :adapter => 'sqlite3', :database => 'foobar.db'
      connection.create_table table_name, :force => true do |t|
            t.string :name
              end
end
bob=  Person.new(:name => 'bob')
bob.save!
#bob = Person.create!(:name => 'bob')

puts Person.all.inspect
bob.destroy
puts Person.all.inspect

