## Enumerable

## lazy
- 実際に値が必要になるまで値を生成しない。takeやfirstなど、値を返すメソッドが呼ばれたら必要な数だけ値を評価してリストとして返す。

- 基礎問題24
- [Float::INFINITY](https://docs.ruby-lang.org/ja/latest/method/Float/c/INFINITY.html)は浮動小数点における正の無限大。
- だから無限ループとかいう回答があったみたい。
```
p (1..Float::INFINITY).lazy.map{| x | x ** 2 }.take(3).inject(0, &:+)

# => 14
```
