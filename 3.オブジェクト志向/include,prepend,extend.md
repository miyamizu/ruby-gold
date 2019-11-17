## inclede
- incledeはモジュールをクラスにMix-inする
- モジュールがスーパークラスとの間に入る。
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
