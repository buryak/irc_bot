require "socket"

server = "irc.bitmakerlabs.com"
port = "6667"
nick = "NSA"
channel = "#cohort5"
greeting_prefix = "privmsg #{channel} :"
greetings = ["bomb", "explosive", "attack", "nuke"]

irc_server = TCPSocket.open(server, port)

irc_server.puts "USER bnsa 0 * BNSA"
irc_server.puts "NICK #{nick}"
irc_server.puts "JOIN #{channel}"
irc_server.puts "PRIVMSG #{channel} :Hello and welcome, this channel is under surveillance."

# Hello, Bot!
until irc_server.eof? do
  msg = irc_server.gets.downcase
  puts msg

  was_greeted = false
  greetings.each do |g|
    was_greeted = true if msg.include?(g)
  end

  if msg.include?(greeting_prefix) and was_greeted
          response = "~~~ NSA IS WATCHING YOU ~~~"
          irc_server.puts "PRIVMSG #{channel} :#{response}"
  end
end