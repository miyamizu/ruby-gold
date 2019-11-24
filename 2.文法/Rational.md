## Integer, Rational, Float

### 問題
基礎問題3   

### ハッシュ
```
Ruby 1.9 で下記のような新しい表記のハッシュリテラルが追加されました。この表現は普段から目にすることも多いので知っている人がほとんどだと思います。

{ a: 1, b: 2, c: 3 } # => {:a=>1, :b=>2, :c=>3}
シンボルをキーとするハッシュが簡単に書けるようになりました。

逆に下記のような書き方はできなくなりました。

{ :a, 1, :b, 2, :c, 3 } # => SyntaxError
```

### Integer同士の演算
```
Integer同士の演算 Intは小数が丸められる
irb(main):001:0> 4/5
=> 0
```

### IntegerとFloatが含まれる演算
```
Floatになる
irb(main):002:0> 4.0/5
=> 0.8
irb(main):004:0> 4/5.0
=> 0.8
```

### IntegerとRationalの演算
```
Rationalクラス(有理数を扱うNumericクラスのサブクラス)になるよ
irb(main):003:0> 4/5r
=> (4/5)

to_fするとFloatクラスになるよ
irb(main):005:0> 4/5r.to_f
=> 0.8
```

### FloatとRationalの演算
```
Floatになる
irb(main):003:0> 4.0/5r
=> 0.8
```

### 複素数
```
1i # => (0+1i)
1 + 2i # => (1+2i)
1i.class # => Complex
```

### 虚数部が有理数の複素数
```
1ri # => (0+(2/1)*i)
1ri.class # => Complex
```
