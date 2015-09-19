num = {"Why"=> 1, "True"=> 2 }

def update(source)
  source.each do |key, value|
    source[key] += 1
  end
end

i="string"
puts "i class = #{i.class}"
update(num)
puts num