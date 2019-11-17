## Fiber

### 攻略法
- 基本的な使い方や振る舞いを抑えておく。
- 加えて、例外発生時の挙動も理解しておく。

### 基礎問題25
- Fiber.yieldは現在のファイバの親にコンテキストを切り替える。f.resumeはFiber.yieldで与えた引数の"foo"を返す。

```
f = Fiber.new {
  Fiber.yield "foo"
}

puts f.resume
```

