#!/usr/bin/ruby

ary = ARGV

for idx in 1..ary.size - 1 do

  key = ary[idx].to_i

  current_idx = idx  - 1
  while current_idx >= 0 && ary[current_idx].to_i > key do
    ary[current_idx + 1] = ary[current_idx].to_i
    current_idx = current_idx - 1
  end

  ary[current_idx + 1] = key

end

puts ary

