## self

### 表示されるのは？
```
module M
  $m = self
end

class A
  $a = self
end

class B < A
  include M
  $b = self
end

c = B.new
$c = c.class

puts $m #=> M
puts $a #=> A
puts $b #=> B
puts $c #=> B
```

### 問題
```
class A
  $a = self
  def hoge
    $b = self
  end
end

a = A.new
print A == $a, A.new == $b #=>ture false
解説： クラス 定義 中 の self は、 その クラス オブジェクト です。 インスタンス メソッド 中 の self は、 その クラス の オブジェクト です。 $ a には クラス A が 代入 さ れ ます。 $ b は、 hoge が 実行 さ れ なけれ ば 値 が 代入 さ れ ない ので、 nil となり ます。

```
