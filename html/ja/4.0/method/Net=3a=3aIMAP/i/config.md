# Net::IMAP#config

### def config -> Net::IMAP::Config

接続ごとの設定を返します。

この設定は [Net::IMAP.new](../../../method/Net=3a=3aIMAP/s/new.md) で接続ごとに作られ、`config` で指定した設定(省略時は全体の設定 [Net::IMAP.config](../../../method/Net=3a=3aIMAP/s/config.md))を継承します。
[Net::IMAP.new](../../../method/Net=3a=3aIMAP/s/new.md) の残りのキーワード引数が、この設定の初期値になります。

- **SEE** [Net::IMAP::Config](../../../class/Net=3a=3aIMAP=3a=3aConfig.md), [Net::IMAP.config](../../../method/Net=3a=3aIMAP/s/config.md)
