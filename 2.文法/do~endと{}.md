## do~endと{}

### 文法
- do~endと{}は結合度が違う
- ブロックを{}で囲むときは、()を書かないとダメ。
```
1.upto 5 do |x| puts x end
1.upto (5) do |x| puts x end
1.upto 5 { |x| puts x }
1.upto (5) { |x| puts x }

```

