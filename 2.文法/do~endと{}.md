## do~endと{}

### 文法
- {}の方がdo...endよりも強く結合する。
- ブロックを{}で囲むときは、()を書かないとダメ。
```
1.upto 5 do |x| puts x end
1.upto (5) do |x| puts x end
1.upto 5 { |x| puts x }
1.upto (5) { |x| puts x }

```
### blockがあるか確認する方法
```
block_given?を使う
```
