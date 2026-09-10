# OpenSSL::SSL::SSLSocket#export_keying_material

### def export_keying_material(label, length, context = nil) -> String

[RFC:5705] に従って、共有されているセッション鍵の材料をエクスポートします。

TLS のマスターシークレットから `label`(と、指定した場合は `context`)を使って `length` バイトのデータを導出します。これは、TLS 接続の上位で追加の暗号鍵を安全に生成する場合などに使えます。

- **param** `label` -- 鍵導出に使うラベルを表す文字列
- **param** `length` -- 生成するデータのバイト数
- **param** `context` -- 鍵導出に使う追加のコンテキスト文字列
- **raise** `OpenSSL::SSL::SSLError` -- 鍵材料のエクスポートに失敗した場合に発生します
