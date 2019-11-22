## remove_method

### 参考文献

[remove_method](http://ref.xaio.jp/ruby/classes/module/remove_method)

## undef_method

- 二つの違いを調べる

## define_method
- 引数で指定した名前のメソッドを定義するためのメソッド


## respond_to?(:foo)

```
class Foo
  private
  def foo
   puts "foofoofoo"
  end
 end
 puts Foo.new.respond_to?(:foo)
 # falseが表示される
```
