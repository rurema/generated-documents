# class DRb::DRbUnknown < Object

リモートプロセスからマーシャリングされて送られてきたオブジェクトで、そのクラスがローカルプロセス内では不明であるようなものを表すクラス。

このクラスのインスタンス内部ではマーシャリングされたバイト列を保持しています。DRB 経由で他のプロセスにこのオブジェクトを渡すと、
DRbUnknown オブジェクトではなくそのマーシャリングされたデータを渡します。

クラス名/定数名は [DRb::DRbUnknown#name](../method/DRb=3a=3aDRbUnknown/i/name.md) で取得できます。
[DRb::DRbUnknown#buf](../method/DRb=3a=3aDRbUnknown/i/buf.md) で保持しているマーシャリングされたバイト列を得ることができます。

このクラスのインスタンスの使い道としては、オブジェクトの中継が考えられます。
A, B, C と3つのプロセスがあって、drb によって A <-> B <-> C と通信しているとします。ここで A と C では定義されているが B では定義されていないクラスがあったとしましょう。A から B にマーシャリングされてオブジェクトが渡されると、B ではそのクラスの素性がわからないため
DRbUnknown オブジェクトとして表現されます。
それを C に送ると、マーシャリングされたバイト列が C に送られ、
C ではそれを元のオブジェクトに復元できます。
このように、中継プロセス B では中継するオブジェクトのクラスについて知らなくとも正しく動作します。

## Instance Methods

- [buf](../method/DRb=3a=3aDRbUnknown/i/buf.md)
- [exception](../method/DRb=3a=3aDRbUnknown/i/exception.md)
- [name](../method/DRb=3a=3aDRbUnknown/i/name.md)
- [reload](../method/DRb=3a=3aDRbUnknown/i/reload.md)
