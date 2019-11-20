## sort

### a<=>b

```
x = ["abc","defgk","lopq"]
p x.sort{| a, b | a<=>b}

#=> ["abc", "defgk", "lopq"]
```

### b<=>a

```
x = ["abc","defgk","lopq"]
p x.sort{| a, b | b<=>a}

#=> ["lopq", "defgk", "abc"]
```

### a.size <=> b.size

```
x = ["abc","defgk","lopq"]
p x.sort{| a, b | a.size <=> b.size}

#=> ["abc", "lopq", "defgk"]
```

### b.size <=> a.size

```
x = ["abc","defgk","lopq"]
p x.sort{| a, b | b.size <=> a.size}

#=> ["defgk", "lopq", "abc"]
```

### a.size - b.size

```
x = ["abc","defgk","lopq"]
p x.sort{| a, b | a.size - b.size}

#=>["abc", "lopq", "defgk"]
```

### b.size - a.size

```
x = ["abc","defgk","lopq"]
p x.sort{| a, b | b.size - a.size}

#=> ["defgk", "lopq", "abc"]
```

### sort の難しかった問題

```
 class MyNum
  attr_reader :num
  def initialize(num)
   @num = num
  end
  __(1)__
 end


 num1 = MyNum.new(30)
 num2 = MyNum.new(10)
 num3 = MyNum.new(20)
 p [num1, num2, num3].sort.map{|n| n.num }


[実行結果]
 [10, 20, 30]

[選択肢]
	1．	include Comparable
	2．	include Enumerable
	3．	def <=>(other)
@num <=>other.num
end
	4．	def sort(other)
@num <=>other.num
end

[解説]
問題文のコードでは配列に対してsortメソッドを呼び出しています。
sortメソッドは、配列の要素に対して<=>演算子を使用して比較します。

数値や文字列などの既存のオブジェクトに関しては、<=>演算子が定義されているので、sortメソッドを使用することができますが、作成したクラスのオブジェクトには、<=>演算子を定義する必要があります。
```
