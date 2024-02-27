#!/usr/bin/env ruby
arg_string = ARGV[0]
output = `echo '#{arg_string}' | awk -F'[][]' '{gsub(/from:/, "", $12); gsub(/to:/, "", $14); gsub(/flags:/, "", $16); print $12 "," $14 "," $16}'`
puts output
