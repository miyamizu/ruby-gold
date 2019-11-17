## Superについて

## 基礎問題12
- superは、スーパークラスの同名メソッドを呼び出す。
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
