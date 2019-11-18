### 問題
- 模擬試験14

## inclede
- incledeはモジュールをクラスにMix-inする
- モジュールがスーパークラスとの間に入る。(モジュールのメソッドを先に見に行くようになる)
```
module M
  def foo
    self.class
  end
end

class C
  include M
end

p C.new.foo # => C
```

## prepend
- ruby2.0で追加された
- prependされたモジュールはprependした対象のクラスより先にメソッドの探索が行われるように継承関係が作られる。
- [instance method Module#prepend](https://docs.ruby-lang.org/ja/2.0.0/method/Module/i/prepend.html)
```
module Mod 1; end
module Mod 2; end

class Cls1
  prepend Mod1
end

class Cls2 < Cls1
  prepend Mod2
end

p Cls2.ancestors
```
- prependで呼び出されたモジュール内でsuperを呼び出すと、元から定義されていたメソッドが呼び出される。
```
module Mod
  def foo
    puts "Mod"
    super
  end
end

class Cls1
  def foo
    puts "Cls1"
  end
end
class Cls2 < Cls1
  prepend Mod
end
Cls2.new.foo #=> Mod Cls1
```

## extend
- モジュール内のメソッドをクラスメソッドとして取り込む
```
module M
  def hoge
    puts "hoge"
  end
end

class A
  extend M
end

A.hoge #=> hoge
```

