## using

### 参考文献
[Refinementについてグダグダ](https://qiita.com/yustoris/items/77fd309178dcdd13b5cd)
[refine](https://docs.ruby-lang.org/ja/2.1.0/method/Module/i/refine.html)

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
