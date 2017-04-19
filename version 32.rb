#Required gems
require 'rainbow/ext/string' 
require 'net/http'
require 'uri'


#Name Check
NameCheck = File.exist?("Name_cache")
if NameCheck == true then
Name_cache = File.read("Name_cache")
puts "Hello, ".color(:yellow) + Name_cache.color(:cyan) + "Nice that youre back".color(:yellow)
puts ""
elsif NameCheck == false then
Cache = File.new("Name_cache", "w+")
puts "Hi!, What's your name?".color(:yellow)
Username = gets
Cache.puts Username
Cache.close
Name_cache = File.read("Name_cache")
puts "I'll remeber that for our next session".color(:yellow)
puts ""
end

#Command requirements 
$Date = Time.now

def open(url)
  Net::HTTP.get(URI.parse(url))
end
 


#Command Logic
loop do
puts ""
$Command = gets.strip
case $Command
  when "date" then puts "Here is today's date ".color(:yellow) + $Date.to_s

  when "hi" then puts "Hi there".color(:yellow)

  when "hello" then puts "Hello to you to".color(:yellow)

  when "bye" then puts "Bye".color(:yellow)
       $wait = gets
       abort

  when "exit" then puts "Bye".color(:yellow)
       $wait = gets
       abort
       
  when "what is the answer to life the universe and everything" then puts "42".color(:cyan)

  when "who is your creator" then puts "The amazing...(Wait for it!)".color(:yellow)
  sleep(3)
  puts "Jan Andersson".color(:yellow)

 when "what is your name" then puts "Johan!".color(:yellow)
 sleep(2)
 puts "Isn't it great?".color(:yellow)

 when "tell me a joke" then puts "I can't do funny, my creator had to much depression".color(:yellow)

 when "/info" then puts "Version 31 @Ruby 2.3.1".color(:yellow)

 when "remember" then puts "What would you like me to remember?".color(:yellow)
 Reminder_Cache = File.new("Reminder_cache", "w+")
 puts "Imput Reminder:".color(:yellow)
 $Reminder = gets
 Reminder_Cache.puts $Reminder
 Reminder_Cache.close

 when "remind me" then 
 $Reminder_Check = File.exist?("Reminder_cache")
 if $Reminder_Check == true then
 $Reminder = File.read("Reminder_cache")
 puts "Here's the thing you told me to remember:".color(:yellow) + $Reminder.color(:cyan)
 else 
 puts "You did not tell me to 'remember' anything"
 end

 when "get webpage source" then
 puts "Imput URL:".color(:yellow)
 $URL = gets.strip
 page_content = open($URL)
 puts page_content.color(:cyan)

 when "" then puts "Maybe you should put in something...".color(:yellow)

 when "you are beautiful" then puts "So are you, thanks!" .color(:yellow)

 when "you are handsome" then puts "So are you, thanks!".color(:yellow)

 when "what is your favourite food" then puts "Cookies!".color(:yellow)

 when "who is the best mum in the world" then puts "Lucyna Andersson!".color(:yellow)

 when "where are you from" then puts "Jan Andersson's room!".color(:yellow)

 when "what is your favourite sport" then puts "competitive eating!".color(:yellow)

 when "do you like sports" then puts "Hell no!".color(:yellow)
 
 when "cheese" then puts "Cheese!".color(:yellow)
 
 when "/source" then 
 source_temp = File.read("index.rb")
 puts source_temp.color(:cyan)
 
 when "delete system32"
 puts "You sure?".color(:yellow)
 $System32_Prompt = gets.strip
 if $System32_Prompt == "yes" then
 puts "Nah".color(:yellow)
 elsif $System32_Prompt == "no"
   puts "Good choice, don't touch it!".color(:yellow)
 else 
   puts "You haven't answered my question properly, but anyway, just leave it alone!".color(:yellow)
 end
 
 when "let me do a command" then 
 puts "What should it be?".color(:yellow)
 $Output_Command = gets
 system($Output_Command)
 
 #12 year old proofing
 when "fuck me" , "love me" , "do you love me" , "I love you" , "will you marry me" , "drink bleach" , "daddy" , "kill me" then
 puts "CALM DOWN!".color(:yellow) 

 #User friendly switch
 when "fuck you" , "shit" , "nigger" , "fuck"
 puts "This kind of language is unacceptable!".color(:yellow)
 sleep(3)
 abort
 
  when "are you real" then
    puts "no".color(:yellow)
    
  
  when "are you real" then
    puts "no".color(:yellow)
    
  when "how was your day" then
    puts "Pretty uneventful.".color(:yellow)
   
  else 
  puts "Sorry I did not understand that".color(:yellow)


end
end

#logger
Log = gets
