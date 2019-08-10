require_relative './Person.rb'
require_relative './Shoes.rb'

rob = Person.new("Rob")
alyssa = Person.new("Alyssa")
af1 = Shoes.new("AF1")
chucks = Shoes.new("Chucks")

puts "1 - Rob buys shoes"
rob.buy_shoes(af1)
puts rob
print rob.shoes
puts "\n"
puts rob.shoe_status(af1)
print '*******'"\n" "\n"

puts "2 - First run - passes"
rob.go_run(af1)
puts rob.shoe_status(af1)
puts '*******'"\n" "\n"

puts "3 - Second run - fails (laces untied)"
rob.go_run(af1)
puts '*******'"\n" "\n"

puts "4 - Ties laces"
rob.lace_em_up(af1)
puts rob.shoe_status(af1)
puts '*******'"\n" "\n"
puts "5 - Rob checks on shoes that don't belong"
puts rob.shoe_status(chucks)
puts '*******'"\n" "\n"

puts "6 - Second second run attempt after laces tied"
rob.go_run(af1)
puts rob.shoe_status(af1)
puts '*******'"\n" "\n"

puts "7 - Rob laces after run"
rob.lace_em_up(af1)
puts rob.shoe_status(af1)
puts '*******'"\n" "\n"

puts "8 - Rob tries to lace again"
rob.lace_em_up(af1)
puts '*******'"\n" "\n"

puts "9 - Rob cleans up AF1"
rob.clean_shoes(af1)
puts rob.shoe_status(af1)
puts '*******'"\n" "\n"

puts "10 - Rob cleans up 2 more times"
rob.clean_shoes(af1)
rob.clean_shoes(af1)
rob.shoe_status(af1)
puts "\n"'*******'"\n" "\n"

print Person.all_people
puts "\n" '*******'"\n" "\n"
print Shoes.all_shoes

puts "\n" '*******'"\n" "\n"
puts "End"