### p と print

- p は inspect
- print は to_s

### to_s と to_str

- 微妙に違う
- https://qiita.com/tbpgr/items/19b42765a7b9cb292f44
  [公式ドキュメント to_s](https://docs.ruby-lang.org/ja/2.1.0/method/Object/i/to_s.html)
  [公式ドキュメント to_str](https://docs.ruby-lang.org/ja/2.1.0/method/Object/i/to_str.html)

### inspect の問題

```
[コード]
 class Person
  def initialize(name)
   @name = name
  end
  def inspect
   "My name is #{@name}"
  end
 end
 p Person.new("taro")


[実行結果]
 My name is taro.
```

### 違いを調べる

```
	1．	p
	2．	to_s
	3．	inspect
	4．	toString

```
