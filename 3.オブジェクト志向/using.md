## using

### 基礎問題20
- refineで再定義したメソッドを有効にするには、usingを使う
```
class C
  def hoge
    puts "A"
  end
end

module M
  refine C do
    def hoge
      puts "B"
    end
  end
end

c = C.new
c.hoge

using M

c.hoge #=> A[改行]B
```

- includeにすると...
```
```
class C
  def hoge
    puts "A"
  end
end

module M
  refine C do
    def hoge
      puts "B"
    end
  end
end

c = C.new
c.hoge

include M

c.hoge #=> A[改行]A
```

```
