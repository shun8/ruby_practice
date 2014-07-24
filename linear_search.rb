#!/usr/bin/ruby

key = ARGV.slice!(0)

for idx in 0..ARGV.size - 1 do

  if ARGV[idx] == key
    puts idx
  end

end
