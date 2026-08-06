# WEBrick::GenericServer#start

### def start               -> ()
### def start{|soc| ... }   -> ()

サーバをスタートします。

ブロックが与えられた場合 [WEBrick::GenericServer#run](../../../method/WEBrick=3a=3aGenericServer/i/run.md) メソッドの代わりにブロックが実際のクライアントとの応答を担います。
ブロックは [TCPSocket](../../../class/TCPSocket.md) オブジェクトを引数として呼ばれます。
