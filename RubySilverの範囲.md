### inject

```
puts [1,2,3].sum
puts [1,2,3].inject(0).{|sum,i| sum + i}
puts [1,2,3].inject(0).{|sum,i| sum * i}

```

### push,pop,shift,unshift

```
 ary = [:job1, :job2, :job3]
 ary.push(:job4)
 ary.unshift(:job5)
 ary.pop
 ary.shift
 p ary

Array#push, Array#pop, Array#unshift, Array#shiftはすべて配列の要素の追加と取り出しを行うメソッドです。

		ary = [:job1, :job2, :job3]

		ary.push(:job4)

		p ary     #=> [:job1, :job2, :job3, :job4]

		ary.unshift(:job5)

		p ary     #=> [:job5, :job1, :job2, :job3, :job4]

		ary.pop

		p ary     #=> [:job5, :job1, :job2, :job3]

		ary.shift

		p ary     #=> [:job1, :job2, :job3]
```

### equal の話

```
 var1 = :hello
 var2 = :hello


 puts var1.equal?(var2)
```

### ++i なんてないよ

- i += 1 を使おうな
