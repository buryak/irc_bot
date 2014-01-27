puts $stoud.kind_of?(IO)

$stoud = File.open("test.log", "w") #w for write, a for append, r for read,

puts "I am going to the file. It is more fun than printing on the console"

$stdout.flush

puts $stdout.equal?(STOUD)

$stdout = STDOUT

puts "Oh Em Gee, I am back on the console."

system('ls -l') #will run command in terminal lols ensue
system('echo Wheeee')