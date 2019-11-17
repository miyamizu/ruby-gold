## Date

### 文法
- 日が+1
```
require "date"

date = Date.new(2000, 10, 10)
puts date + 1

#=> 2000-10-11
```
- 日が-1
```
require "date"

date = Date.new(2000, 10, 10)
puts date - 1

#=> 2000-10-9
```
- 月が+1
```
require "date"

date = Date.new(2000, 10, 10)
puts date >> 1

#=> 2000-11-10
```
- 月が-1
```
require "date"

date = Date.new(2000, 10, 10)
puts date << 1

#=> 2000-9-10
```
