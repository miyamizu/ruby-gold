## Object

### クラスに標準で定義されているもの
```
ARGF
ARGV
ENV
DATA
```

### 普通のメソッド定義と同じ書き方
- 以下は同じ。トップレベルはObjectクラスのオブジェクト。トップレベルで定義されたメソッドの可視性はprivate。
```
def foo
  puts "Hello"
end

class Object
  private
  def foo
    puts "Hello"
  end
end
```
