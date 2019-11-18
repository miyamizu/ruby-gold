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

## DateTime
DateTime同士の演算
- ちなみに、Date同士の演算もRationalだった
- DateとDateTimeの演算もRationalだった。
- Time同士の演算はFloat型\ ( ˆoˆ )/
- TimeとDate,DateTimeは計算できない。（型が違うからっぽい）
```
require 'date'
d1 = DateTime.new
d2 = DateTime.new
p(d2-d1).class #=>Rational
```

- 1を加算すると、1日後の時刻を表す。

## Time
- 1を加算すると、1秒後の時刻を表す。
- Time同士の演算はFloat型\ ( ˆoˆ )/
