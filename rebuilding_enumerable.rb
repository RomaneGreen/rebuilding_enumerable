
#Open Enumerable module to duplicate methods
module Enumerable

#test run
def run

 p true

end

# Same as each just with indexdi
def my_each_with_index(&block)

my_each do |element|
block.call(self.index(element))
end
end




#each calls the given block once for each item in self
def my_each(&block)

for i in self

block.call(i)

end

end

#map takes an array and return a new array
def my_map

new_array = []
for i in self

 new_array << yield(i)

end
new_array
end

#count uses increment to count object
def my_count
count = 0
for i in self

count += 1
end
count
end

#checks if no item is equal in object
def my_none?(ifnone = nil, &block)
  result = nil
  found = false
  my_each do |element|
    if block.call(element)
      result = element
      found = true
      break
    end
  end
  found ? false : true
end

# checks if any item is equivalent
def my_any?(ifnone = nil, &block)
  result = nil
  found = false
  my_each do |element|
    if block.call(element)
      result = element
      found = true
      break
    end
  end
  found ? true : false
end


# Selects under constraints
def my_select(&block)
reduce([]) do |arr, value|
arr << value if block.call(value)
 arr
 end
 end


#checks if all items equivalent to given object
def my_all?(ifnone = nil, &block)
  new_array = []
  result = nil
  found = false
  my_each do |element|
    if block.call(element)
      result = element
      new_array << element
      found = true

    end
  end
  new_array == self ? true : false
end

#block is passed in reduce to use inject method
def my_inject(&block)

 reduce(&block)

end


end

#[2,3,4].my_map {|i| i * 3}

#[2,3,4].my_each {|i| p i}

#[2,3,4].my_count

#[2,3,4].my_select {|i| i > 3}

#['lions','tigers'].my_none? {|x| x.length > 3}

#['lions','tigers'].my_any? {|x| x.length > 3}

#['lions','tigers','bears'].my_all? { |n| n.size > 4}

#[2,4,6].my_inject {|n,m| n * m}

#[2,4,6].my_each_with_index {|p| p p }
