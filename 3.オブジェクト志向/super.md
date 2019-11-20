## Super について

## 基礎問題 12

- 親クラスの同名のメソッドを子クラスから呼び出す場合は「super」を使う

```
class Super
  def greet
    "Hello"
  end
end

class Sub < Super
  def greet
    super + "World."
  end
end
puts Sub.new.greet
=> "Hello World"
```
