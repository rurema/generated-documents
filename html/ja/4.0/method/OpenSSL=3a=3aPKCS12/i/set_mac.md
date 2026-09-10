# OpenSSL::PKCS12#set_mac

### def set_mac(pass, salt = nil, iter = nil, md_type = nil) -> nil

MAC のパラメータを設定し、PKCS#12 構造全体に対する MAC を計算しなおします。

HMAC と、PKCS#12 独自のパスワードベース鍵導出関数(KDF)を使って計算します。

- **param** `pass` -- MAC の計算に用いるパスワード文字列
- **param** `salt` -- MAC の計算に用いる salt 文字列。省略した場合は自動的に生成されます
- **param** `iter` -- 鍵導出の繰り返し回数。省略した場合は既定の回数が使われます
- **param** `md_type` -- 使用するハッシュアルゴリズムを表す文字列もしくは [OpenSSL::Digest](../../../class/OpenSSL=3a=3aDigest.md) のオブジェクト。省略した場合は既定のアルゴリズムが使われます
- **raise** `OpenSSL::PKCS12::PKCS12Error` -- MAC の設定に失敗した場合に発生します
