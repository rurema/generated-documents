# library webrick/ssl

[WEBrick::GenericServer](../class/WEBrick=3a=3aGenericServer.md) を SSL/TLS に対応させるための実装。
このファイルを require すると WEBrick::GenericServer が SSL/TLS 対応になる。

ruby 1.8.3 以降では単に require するだけでは SSL/TLS は有効ではなく、設定で明示的に有効にする必要がある。
