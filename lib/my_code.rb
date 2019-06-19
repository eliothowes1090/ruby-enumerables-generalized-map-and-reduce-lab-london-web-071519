# Your Code Here

def map(array)
  counter = 0
  new_array = []

  while counter < array.length do
    new_array << yield(array[counter])
    counter += 1
  end
  new_array
end


def reduce(source_array, starting_point = nil)
  counter = 0

  if starting_point
    memo = starting_point
    counter = 0
  else
    memo = source_arrayp[0]
    counter = 1
  end
  while counter < source_array.length do

    value += yield(memo, source_array[counter])
    counter += 1
  end
  value
end

reduce(s, sp=nil)
if sp
  accum = sp
  i = 0
else
  accum = s[0]
  i = 1
end
while i < s.length
  accum = yield(accum, s[i])
  i += 1
end
accum
end
