## 標準搭載のテスト

### 文法

- Test::Unit のテストメソッド名は test(アンダーバー)で始める（エスケープできねぇ...！）

```
require 'test/unit'
require 'foo'

class TC_Foo < Test::Unit::TestCase
 def test_foo
   #テストコード
 end
end
```

### FileTest モジュールに存在しないメソッド

```
	1．	file?
	2．	directory?
	3．	socket?
child→存在しない
```
