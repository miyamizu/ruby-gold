##問題
```
class A
  @@x = 0
  class << self
    @@x = 1
    def x
      @@x
    end
  end
  def x
    @@x = 2
  end
end

class B < A
  @@x = 3
end

p A.x
クラス変数は、スーパークラスとサブクラス間で共有される。出題コードではクラスBの@@x=3最終定義になるので3が表示される。
```
