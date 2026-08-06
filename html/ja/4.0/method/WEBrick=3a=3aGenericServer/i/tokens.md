# WEBrick::GenericServer#tokens

### def tokens    -> Thread::SizedQueue

MaxClient の設定のために使われる [Thread::SizedQueue](../../../class/Thread=3a=3aSizedQueue.md) オブジェクトを返します。[Thread::SizedQueue](../../../class/Thread=3a=3aSizedQueue.md) オブジェクトのサイズは現在受け付けることのできるクライアントの数です。

MaxClient を知りたい場合は self.tokens.max です。
self.tokens.max - self.tokens.length が現在のクライアントの接続数です。
