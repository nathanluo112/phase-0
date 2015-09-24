bobolinks = ["Nathan Luo", "Kim Allen", "Jenna Andersen", "Pamela Antonow", "Jupiter Baudot", "Ovi Calvo", "Awilda Cantres", "Celeste Carter", "Mike Cerrone", "Eunice Choi", "Un Choi", "Kristie Chow", "Regina Compton", "Marcus Davis", "Paul Etscheit", "Solomon Fernandez", "Marcel Galang", "Ricky Binhai Hu", "Kai Huang", "Harmin Jeong", "Lauren Jin", "CJ Joulain", "Michael Landon", "Richard Leo", "Julian Lesse", "Julian Lesse", "Ian Lockwood", "Alison Lyons", "Lauren Markzon", "Christopher Mark", "Miguel Angel Melendez", "David O'Keefe", "Nathan Park", "Farman Pirzada", "Samuel Frederick Purcell", "Salim Rahimi", "Colin Razevich", "Irina Renteria", "Jamie Runyan", "Eric Shou", "Rosslyn Sinclair-Chin", "Aji Slater", "Marvy Tagala", "George Warnbold", "Shawn Watson", "Hana Worku", "Nicholas Yee"]

def group_organizer(array)
  array.shuffle!
   if array.length % 4 != 0
      groups = array.each_slice(4).map {|a| p a}
      floaters = groups.pop
      groups[rand(groups.length + 1)] << floaters.shift until floaters.length == 0
      return groups
   else
    array.each_slice(4).map {|a| p a}
   end
end

group_organizer(bobolinks)