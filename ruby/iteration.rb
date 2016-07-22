
groceries = ["milk", "oranges", "cookies", "ice cream"]

groceries_hash = {
  "milk" => 2,
  "oranges" => 20,
  "cookies" => 30,
  "ice cream" => 1
  }

print " 1) Array iteration: "
groceries.each do |item|
  print " #{item}"
end

print "\n 2) Array iteration with uppercase transformation: "
groceries.map! do |item|
    print " #{item.upcase}"
end

print "\n 3) Hash iteration:"
groceries_hash.each do |item, amount|
  print " #{amount}-#{item} "
end

print "\n 2) Hash iteration with .map transformation: "
groceries_hash.map do |item, amount|
  amount += 10
  print " #{amount}-#{item} "
end



def reject_num(numbers)
print "\n1) Delete numbers less than 5.   "
new_numbers = numbers.reject { |x| x < 5 }
p new_numbers
end

def select(numbers)
print "\n2) Choose numbers less than 5.   "
more_numbers = numbers.select { |x| x < 5 }
p more_numbers
end

def keep(numbers)
print "\n3) Another delete method deleting numbers less than 4.   "
even_more_numbers = numbers.drop_while { |x| x <= 4 }
p even_more_numbers
end

def do_till_false(numbers)
print "\n4) Iterates until false  " 
numbers.each do |x|
  while numbers.length > 3
    numbers.pop
  end
end
p numbers
end

def hash_select(groceries_hash)
new_hash = groceries_hash.select { |items,values| items != "milk"}
print "\n1) Delete milk: #{new_hash}"
end

def hash_delete(groceries_hash)
another_hash = groceries_hash.delete_if {|items, values| items.length <= 7}
print "\n2)  Delete grocery item names longer than 7 : #{another_hash}"
end

def hash_keep(groceries_hash)
new_hash = groceries_hash.keep_if {|items, values| items == "milk"}
print "\n3) Select milk: #{new_hash}\n"
end

def hash_remove(groceries_hash)
  i = groceries_hash.length
  puts "\n4) Iterates until false  " 
  groceries_hash.each do |x,y|
    if i>=3
      puts "#{x} #{y}"
      i-=1
    end
  end
end

#DRIVER CODE
print "\n\nnumbers = [2, 27, 4, 11, 19]\n"
numbers = [2, 27, 4, 11, 19]
reject_num(numbers)
select(numbers)
keep(numbers)
do_till_false(numbers) 
print "\nGrocery hash: #{groceries_hash}"
hash_select(groceries_hash)
hash_delete(groceries_hash)

groceries_hash = {
  "milk" => 2,
  "oranges" => 20,
  "cookies" => 30,
  "ice cream" => 1
  }
hash_keep(groceries_hash)

groceries_hash = {
  "milk" => 2,
  "oranges" => 20,
  "cookies" => 30,
  "ice cream" => 1
  }
hash_remove(groceries_hash)



