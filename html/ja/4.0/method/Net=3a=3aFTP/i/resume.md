# Net::FTP#resume

### def resume -> bool

現在のリジュームモードの状態を返します。

リジュームモードが有効であるならば、いくつかの転送メソッドにおいて転送が中断され不完全な転送しかできなかった場合に再開が可能になります。

デフォルトは false です。

転送の中断と再開が可能なのは以下のメソッドです。
  - [Net::FTP#get](../../../method/Net=3a=3aFTP/i/get.md)
  - [Net::FTP#put](../../../method/Net=3a=3aFTP/i/put.md)
  - [Net::FTP#getbinaryfile](../../../method/Net=3a=3aFTP/i/getbinaryfile.md)
  - [Net::FTP#putbinaryfile](../../../method/Net=3a=3aFTP/i/putbinaryfile.md)

転送が中断したかどうかは転送先に問題のファイルが存在するかどうかで判定され、そのファイルサイズで再開する位置を決めます。

- **SEE** [Net::FTP#resume=](../../../method/Net=3a=3aFTP/i/resume=3d.md)
