# OpenSSL::PKCS7.encrypt

### def OpenSSL::PKCS7.encrypt(certs, data, cipher=nil, flags=0) -> OpenSSL::PKCS7

data を証明書の公開鍵で暗号化します。

暗号化は複数の公開鍵を用いてすることが可能です。そのためには複数の証明書を配列で渡します。

data には任意の文字列を渡せますが、一般的には MIME 形式の文字列を渡します。
署名と暗号化の両方をしたい場合は、署名([OpenSSL::PKCS7.sign](../../../method/OpenSSL=3a=3aPKCS7/s/sign.md))された S/MIME 形式の文字列を渡すことが一般的です。

cipher は共通鍵暗号の方式を [OpenSSL::Cipher](../../../class/OpenSSL=3a=3aCipher.md) オブジェクトで指定します。
nil を渡すと適当な方式が選ばれます。互換性を気にするのであれば
triple DES を使うとよいでしょう。多くのクライアントで利用可能なはずです。

flags には以下のフラグを渡すことができます。
  - [OpenSSL::PKCS7::TEXT](../../../method/OpenSSL=3a=3aPKCS7/c/TEXT.md)
      暗号化するデータに text/plain タイプの MIME ヘッダを追加します。
      MIME形式のデータを渡すときにはこれを使ってはいけません。
  - [OpenSSL::PKCS7::BINARY](../../../method/OpenSSL=3a=3aPKCS7/c/BINARY.md)
      data に MIME 正規化をほどこしません。

- **param** `certs` -- 公開鍵を含む証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト)の配列
- **param** `data` -- 暗号化対象の文字列
- **param** `cipher` -- 共通鍵暗号の方式([OpenSSL::Cipher](../../../class/OpenSSL=3a=3aCipher.md) オブジェクト)
- **param** `flags` -- フラグ
