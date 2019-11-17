## const_missing

### 基礎問題19
- const_missingは必ず引数がいる
```
class Object
  X = "X"

  def self.const_missing a
    p "#{a}"
  end
end
Y #=>"Y"
```
- エラーが起こらないので何も表示されない
```
class Object
  X = "X"

  # const_missingは必ず引数がいる
  def self.const_missing a
    p "#{a}"
  end
end
X
```
