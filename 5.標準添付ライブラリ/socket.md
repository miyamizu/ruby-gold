## socket

### 攻略法

- Server があるやつとないやつを抑える

### 参考文献

[library socket](https://docs.ruby-lang.org/ja/latest/library/socket.html)

### ライブラリにあるクラス

```
UDPSocket
BasicSocket
TCPSocket
```

### socket の問題

```
 require 'socket'
 p TCPSocket.ancestors.member?(IO)

  1．このコードを実行すると「true」が出力される
    2．このコードを実行すると「false」が出力される
      3．socketライブラリは組込みライブラリなので「require 'socket'」を記述する必要はない
        4．socketライブラリにTCPSocketというクラスは存在しない

解答：１
解説
TCPSocketはIOクラスを継承しており、Fileクラスなどと同様な操作でソケットを扱うことができます。
```
