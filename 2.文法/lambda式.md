## lambda 式

### 文法

- 基本問題 10

```
->(x){ puts "Hello, #{x}." }
```

- こうとも書ける

```
lambda {|x| puts x }
```

- 引数なし

```
-> { puts 'hello' }
```

- 引数なし

```
->(x, y) { puts x, y }
```

### 実行の仕方

- lambda 式は call で実行する

```
tag = ->(t, msg){
  print "<#{t}>#{ msg}</#{ t}>"
}
tag. call(:p,"Hello,World")

#=> <p>Hello,World</p>
```

### lambda キーワードは、Proc オブジェクトを生成するためのキーワード

```
 var = lambda { puts "hello" }
 p var.class
```
