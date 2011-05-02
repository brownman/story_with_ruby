begin
foo
rescue Exception => e
# ...
end
message = ""
users.each do |user|
user.activated = true
unless user.save
message += "#{user.name}: " +
"#{user.errors.full_messages.join('; ')}"
end
end
unless message.blank?
flash[:warning] = "Unable to update some " +
"of the users: #{message}"
end
begin
my_unpredicable_method(params)
rescue => e
HoptoadNotifier.notify(
:error_class
=> "Special Error",
:error_message => "Special Error: #{e.message}"
)
end


