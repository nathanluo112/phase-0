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