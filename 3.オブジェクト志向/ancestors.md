## ancestors

### ancestorsとは
- Moduleクラスのインスタンスメソッド
- レシーバがModuleクラスのインスタンス（つまりモジュール）またはClassクラスのインスタンス（つまりクラス）の場合に有効。
```
module M1
end

module M2
end

class Cls1
  include M1
end

class Cls2 < Cls1
  def foo
    p self.ancestors
  end
  include M2
end

Cls2.new.foo
```
