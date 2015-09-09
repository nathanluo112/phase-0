def full_name_greeting
  puts("What's your first name?")
  first_name = gets.chomp
  puts("What's your last name?")
  last_name = gets.chomp
  puts("What's your middle name?")
  middle_name = gets.chomp
  puts("Hello, #{first_name} #{middle_name} #{last_name}")
end

def better_num
  puts("What's your favorite number?")
  num = gets.chomp.to_i
  puts("#{num+1} is a bigger and better number!")
end
