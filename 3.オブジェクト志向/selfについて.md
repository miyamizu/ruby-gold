## self

### 表示されるのは？
```
module M
  $m = self
end

class A
  $a = self
end

class B < A
  include M
  $b = self
end

c = B.new
$c = c.class

puts $m #=> M
puts $a #=> A
puts $b #=> B
puts $c #=> B
```
