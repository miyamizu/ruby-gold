## Fiber

### 攻略法
- 基本的な使い方や振る舞いを抑えておく。
- 加えて、例外発生時の挙動も理解しておく。
- 模擬試験42 とドキュメントを照らし合わせる

### 参考文献
[class Fiber](https://docs.ruby-lang.org/ja/2.1.0/class/Fiber.html)

### 基礎問題25
- newで定義、resumeで実行、yieldでファイバー終了(?)。
- Threadクラスが表すスレッドと違い、明示的に指定しない限り、ファイバーのコンテキストは変わらない。
- Fiber.yieldは現在のファイバの親にコンテキストを切り替える。f.resumeはFiber.yieldで与えた引数の"foo"を返す。

```
f = Fiber.new {
  Fiber.yield "foo"
}

puts f.resume
```

