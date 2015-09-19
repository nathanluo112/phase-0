# Create Accountability Group
# The problem is to divide the whole cohort into small groups that contain 3 to 5 students.
# 1. First obtain the names for the whole cohort
# 2. Use the total number of student to mode to get a remainder.
# 3. If remainder is 1, then there are 4 4-people-groups, if remainder is 2, there are 3 4-people-group, if remainer is 3, there are 2 4-people-group, if remainder is 4, there are 1 4-people-group. If remainder is 0 then all students will be in 5-people-group.
# 4. Use total number of students divide 5 then plus 1 to get total number of groups
# 5. Iterate the whole name list to assign a random group number to each person, depends on condistion on step three, the group numbers will appear 4 or 5 times.

$name_book = ["Shunqian Luo (Nathan)", "Kim Allen","Jenna Andersen", "Pamela Antonow", "Jupiter Baudot", "Ovi Calvo", "Awilda Cantres", "Celeste Carter", "Mike Cerrone", "Eunice Choi","Un Choi", "Kristie Chow", "Regina Compton", "Marcus Davis", "Paul Etscheit", "Solomon Fernandez", "Marcel Galang", "Aurelio Garcia", "Hector Jair Moreno Gomez", "Ricky Binhai Hu", "Kai Huang", "Alex Jamar", "Harmin Jeong", "Lauren Jin", "CJ Joulain", "Michael Landon", "Richard Leo", "Julian Lesse", "Ryan Lesson", "Ian Lockwood", "Christopher Mark", "Lauren Markzon", "Miguel Angel Melendez", "David O'Keefe", "Nathan Park", "Landey Patton", "Farman Pirzada", "Samuel Frederick Purcell", "Salim Rahimi", "Colin Razevich", "Irina Renteria", "Jamie Runyan", "Eric Shou", "Michael Silberstein", "Rosslyn Sinclair-Chin", "Aji Slater", "Marvy Tagala", "George Warnbold", "Shawn Watson", "Hana Worku", "Nicholas Yee"]
$groups = []

def acct_group
  total_students = $name_book.length
  name_book_duplicate = $name_book.dup
  raise ArgumentError("Total number of students not enough") if (total_students < 8)
  number_of_four = 5 - total_students%5
  total_groups = total_students/5
  total_groups +=1 if number_of_four > 0
  $groups = Array.new(total_groups){Array.new}
  index = 0

  while index < total_groups
    if index <= number_of_four
      $groups[index]<< name_book_duplicate.shuffle!.pop(4)
    else
      $groups[index]<< name_book_duplicate.shuffle!.pop(5)
    end
    index +=1
  end
  $groups.shuffle!
end

def print
  index = 1
  $groups.each do |group|
    puts("Group #{index}: #{group}")
    index += 1
  end
end

acct_group
print


# What was the most interesting and most difficult part of this challenge?
# The most interesting part is to translate the logic into working functions and methods. The most difficult part is figuring out the logic. As I going through the complexity part and add more behaviors to the method, I get to learn a lot more tricks I have never used before.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I feel more comfortable writing pseudocode but still need a lot more practice.

# Was your approach for automating this task a good solution? What could have made it even better?
# Depending on the requirement of "good". I add randomness and try to make the least amount of people in a group to be 4 instead of 3. So each iteration will return different result. Also changing the number of students will not affect the result much, but too few students will cause problem (which might not be the case because the cohort won't need to be divided if there are too few students).

# What data structure did you decide to store the accountability groups in and why?
# I was using a hash before but eventually changed to array. Using hash allow easier access on each person's information, but harder to output. Array is easier to maintained and output but will take longer time to change the values.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# Yes. I learned how to construct a array of arrays to generate the container. I tried to push names into the $group array's element treating each element as an array, but the default element in the array is in fact nil.
