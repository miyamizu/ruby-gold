## args

### 基本問題8
```
def hoge(*args)
  p args
end
hoge [1, 2, 3]
=>[[1,2,3]]
```

```
def hoge(*args)
  p *args
end
hoge [1, 2, 3]
=>[1,2,3]
```

```
def hoge(*args)
  p args[0]
end
hoge [1, 2, 3]
=>[1,2,3]
```
