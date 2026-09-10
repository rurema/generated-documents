# OpenSSL::SSL::SSLContext#keylog_cb

### def keylog_cb -> Proc | nil
### def keylog_cb=(cb)

TLS の鍵情報が生成、あるいは受信されたときに呼び出されるコールバックを取得・設定します。

コールバックには [OpenSSL::SSL::SSLSocket](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md) オブジェクトと、NSS の SSLKEYLOGFILE デバッグ出力形式のキー情報を含む文字列が渡されます。この情報をファイルに保存しておくことで、Wireshark などのツールで通信内容を復号してデバッグするのに使えます。

OpenSSL 1.1.1 以降でのみ利用できます。

```ruby invalid
proc{|sslsocket, line| ... }
```

- **param** `cb` -- コールバックオブジェクト([Proc](../../../class/Proc.md) や [Method](../../../class/Method.md) など)

```ruby title="例"
require 'openssl'
context = OpenSSL::SSL::SSLContext.new
context.keylog_cb = proc do |_sock, line|
  File.open('ssl_keylog_file', "a") do |f|
    f.write("#{line}\n")
  end
end
```
