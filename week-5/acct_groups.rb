# Create Accountability Group
# The problem is to divide the whole cohort into small groups that contain 3 to 5 students.
# 1. First obtain the names for the whole cohort
# 2. Use the total number of student to mode to get a remainder.
# 3. If remainder is 1, then there are 4 4-people-groups, if remainder is 2, there are 3 4-people-group, if remainer is 3, there are 2 4-people-group, if remainder is 4, there are 1 4-people-group. If remainder is 0 then all students will be in 5-people-group.
# 4. Use total number of students divide 5 then plus 1 to get total number of groups
# 5. Iterate the whole name list to assign a random group number to each person, depends on condistion on step three, the group numbers will appear 4 or 5 times.

$name_book = []
$groups = Hash.new

def acct_group
  total_students = $name_book.length
  raise ArgumentError("Total number of students not enough") if (total_students < 8)
  number_of_four = 5 - total_students%5
  total_group = total_students/5
  total_group +=1 if number_of_four > 0
  index = 1
  assignment_array = []
  while index <= total_group
    if index <= number_of_four
      4.times {assignment_array << index}
    else
      5.times {assignment_array << index}
    end
    index +=1
  end

  name_book_dup = $name_book.dup
  while assignment_array.length >0
    $groups[name_book_dup.shuffle!.pop] = assignemt_array.shuffle!.pop
  end
end