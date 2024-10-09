def fibs(num)
  if num == 0
    sequence = []
  elsif num == 1
    sequence = [0]
  else
    sequence = [0,1]
  end
  
  while sequence.size < num
    sequence.push(sequence[-1] + sequence[-2])
  end 
  puts "Sequence: #{sequence}"
end

fibs(8)

def fibs_rec(num)
  if num < 2
    num
  else
    fibs_rec(num - 1) + fibs_rec(num - 2)
  end
end

puts fibs_rec(8)