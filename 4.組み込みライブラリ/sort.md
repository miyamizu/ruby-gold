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
