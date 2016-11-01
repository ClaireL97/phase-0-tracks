# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

puts "zom".insert(2, 'o')
# => “zoom”

puts "enhance".center(20)
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".insert(-1, ' suspects')
#=> "the usual suspects"

puts " suspects".insert(0, 'the usual')
# => "the usual suspects"

puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter"
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

puts "z".getbyte(0)
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the alt code number for lowercase z

puts "How many times does the letter 'a' appear in this string?".count "a"
# => 4