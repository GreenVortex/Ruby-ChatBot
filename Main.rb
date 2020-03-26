#Requirements
require 'rainbow/ext/string'
require_relative 'functions'
require_relative 'converse'

#Name Check
NameCheck()

#Command Logic
loop do
puts ""
@Command = gets
case @Command

when @Command["date"] then DateDisplay()
when @Command["remember"] then RemembeForUser()
when @Command["remind"] then Remind()


end #End of case
end #End of loop

#logger
Log = gets
