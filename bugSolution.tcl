proc error_proc {args} {
  error "Error: $args"
}

proc myproc {x y} {
  if {$x < 0} {
    error_proc "x is negative: $x"
  }
  return [expr {$x + $y}]
}

puts [myproc -2 5]
puts [myproc 2 5]