### 以下は全部同じ意味

```
[コード1]
class Foo
　attr_accessor :foo
end


[コード2]
class Foo
　attr_reader :foo
　attr_writer :foo
end


[コード3]
class Foo
　def foo
　　@foo
　end
　def foo=(foo)
　　@foo = foo
　end
end

```
