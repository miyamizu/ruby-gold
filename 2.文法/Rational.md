## Integer, Rational, Float

### 問題
基礎問題3   

### 合格教本
3-6-3 多重代入と可変長引数  

### Integer同士の演算
```
Integer同士の演算 Intは小数が丸められる
irb(main):001:0> 4/5
=> 0
```

### Floatが含まれる演算
```
irb(main):002:0> 4.0/5
=> 0.8
irb(main):004:0> 4/5.0
=> 0.8
```

### IntegerとRationalの演算
```
Rationalクラス(有理数を扱うNumericクラスのサブクラス)になるよirb(main):003:0> 4/5r
=> (4/5)
```

### FloatとRationalの演算
```
irb(main):003:0> 4/5r
=> (4/5)

to_fするとFloatクラスになるよ
irb(main):005:0> 4/5r.to_f
=> 0.8
```
