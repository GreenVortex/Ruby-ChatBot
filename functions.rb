#App functions
def NameCheck()
  @NameCheck = File.exist?("Name_cache")
  if @NameCheck == true then
  @Name_cache = File.read("Name_cache")
  puts "Hello, ".color(:yellow) + @Name_cache.color(:cyan) + "Nice that youre back".color(:yellow)
  puts ""
elsif @NameCheck == false then
  @Cache = File.new("Name_cache", "w+")
  puts "Hi!, What's your name?".color(:yellow)
  @Username = gets
  @Cache.puts Username
  @Cache.close
  @Name_cache = File.read("Name_cache")
  puts "I'll remeber that for our next session".color(:yellow)
  puts ""
  end
end

def DateDisplay()
puts "Here is today's date ".color(:yellow) + $Date.to_s
end

def RemembeForUser()
  puts "What would you like me to remember?".color(:yellow)
   @Reminder_Cache = File.new("Reminder_cache", "w+")
   puts "Imput Reminder:".color(:yellow)
   $Reminder = gets
   @Reminder_Cache.puts $Reminder
   @Reminder_Cache.close
end

def Remind()
  $Reminder_Check = File.exist?("Reminder_cache")
  if $Reminder_Check == true then
  $Reminder = File.read("Reminder_cache")
  puts "Here's the thing you told me to remember:".color(:yellow) + $Reminder.color(:cyan)
  else
  puts "You did not tell me to 'remember' anything"
  end
end

def Confusion()
  puts ""
  puts @Confused[Random.rand(0..2)].color(:red)
end
