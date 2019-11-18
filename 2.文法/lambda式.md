## lambda式

### 文法
- 基本問題10
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
- lambda式はcallで実行する
```
tag = ->(t, msg){
  print "<#{t}>#{ msg}</#{ t}>"
}
tag. call(:p,"Hello,World")

#=> <p>Hello,World</p>
```
