## freeze

### 参考文献

- [freeze](http://ref.xaio.jp/ruby/classes/object/freeze)

### freeze の仕様

- clone は freeze,taint,特異メソッドなどの情報も含めた完全な複製を作成する。
- dup はオブジェクトおよび taint 情報を含めた複製を返す。
- クラスだけでなく、モジュールも freeze できる。
- モジュールをインクルードしたクラスを freeze することもできる。

### オブジェクトを変更不可能にする

```
 char = { :a => "A" }.freeze
 char[:a] = "B"
 p char
 # => エラーになる
```

### 凍結した後に破壊的なメソッドを呼び出すと

- 例外が発生する

```
irb(main):026:0> s = "hello"
=> "hello"
irb(main):027:0> s.freeze
=> "hello"
irb(main):028:0> s.upcase! rescue $!
=> #<RuntimeError: can't modify frozen String>
```

### インスタンス変数の参照先のオブジェクトは

- 変更可能
- 参照先のオブジェクトまで変更不可にするには、freeze メソッドを再定義する必要がある。

```
class Cat
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

cat = Cat.new("Tama")
cat.freeze
(cat.name = "Piko") rescue p $! #=>#<RuntimeError: can't modify frozen Cat>

puts cat.name.replace("Piko") #=> Piko
puts cat.name #=> Piko
```

- 以下の書き方は OK
- concat はだめ

```
array = [1, 2, 3].freeze
array += [4, 5]
p array

```
