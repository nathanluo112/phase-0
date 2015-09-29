words = ["a", "b", "c", "a", "d", "b"]

def mode(array)
frequency_hash = array.inject(Hash.new(0)) {|injection,key| injection[key] += 1; injection}
print frequency_hash

frequency_hash.select {|key, value| value == frequency_hash.values.max}.keys
end

p mode(words)