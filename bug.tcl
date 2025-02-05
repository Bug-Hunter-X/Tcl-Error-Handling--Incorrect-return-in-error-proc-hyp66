proc error_proc {args} {
  puts "Error: $args"
}

proc myproc {x y} {
  if {$x < 0} {
    error_proc "x is negative: $x"
    return -1  ;#Incorrect return
  }
  return [expr {$x + $y}]
}

puts [myproc -2 5]
puts [myproc 2 5]