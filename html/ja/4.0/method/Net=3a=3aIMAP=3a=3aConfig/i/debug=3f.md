# Net::IMAP::Config#debug?

### def debug -> bool
### def debug? -> bool

デバッグモードが on になっていれば真を返します。

on のときは、サーバとの間で送受信したデータを標準エラー出力に出力し、応答の解析に失敗したときの警告も詳しくなります。
既定値は false です。
版ごとの既定値の設定はこの属性を全体の設定から継承し、[Net::IMAP::Config#load_defaults](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/load_defaults.md) もこの属性を変えません。
[Net::IMAP.debug](../../../method/Net=3a=3aIMAP/s/debug.md) は全体の設定のこの属性を返します。


- **SEE** [Net::IMAP::Config#debug=](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/debug=3d.md), [Net::IMAP.debug](../../../method/Net=3a=3aIMAP/s/debug.md)
