## inclede
- incledeはモジュールをクラスにMix-inする
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
- prependされたモジュールはprependした対象のクラスより先にメソッドの探索が行われるように継承関係が作られる。
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
