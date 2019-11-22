## Module#refine

- 無名のモジュールを作成する。
- ブロック内の self は無名モジュールになる。

```
class C
  def self.m1
    200
  end
end

module R
　# singleton_classによって、Refinementでクラスメソッドを再定義している
  refine C.singleton_class do
    def m1
      100
    end
  end
end

using R

puts C.m1 #=> 200を呼ぶときは、singleton_classを消すか、using Rを削除する
puts C.m1 #=>どっちも書いてあると100が呼ばれる

```

## using

### 参考文献

[Refinement についてグダグダ](https://qiita.com/yustoris/items/77fd309178dcdd13b5cd)
[refine](https://docs.ruby-lang.org/ja/2.1.0/method/Module/i/refine.html)

### 基礎問題 20

- refine で再定義したメソッドを有効にするには、using を使う

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

- include にすると...

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
