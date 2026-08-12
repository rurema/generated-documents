# OpenSSL::PKCS7.sign

### def OpenSSL::PKCS7.sign(cert, key, data, certs = [], flags = 0) -> OpenSSL::PKCS7

data に証明書と秘密鍵で署名します。

cert に署名に使う証明書を、key にその証明書に対応する秘密鍵を渡します。certs に [OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクトの配列 を渡すと [OpenSSL::PKCS7](../../../class/OpenSSL=3a=3aPKCS7.md) オブジェクトにそれらの証明書が追加で保持されます。
例えば中間 CA 証明書などを渡します。
flags は以下の値の OR を渡します。
  - [OpenSSL::PKCS7::TEXT](../../../method/OpenSSL=3a=3aPKCS7/c/TEXT.md)
      text/plain 用の MIME ヘッダをデータに付け加える。
  - [OpenSSL::PKCS7::NOCERTS](../../../method/OpenSSL=3a=3aPKCS7/c/NOCERTS.md)
      署名者の証明書を署名に含めません。送り先がすでに証明書をもっている場合
      など、他の方法で証明書を手に入れることができる場合に
      データ量を減らすために用います。
  - [OpenSSL::PKCS7::DETACHED](../../../method/OpenSSL=3a=3aPKCS7/c/DETACHED.md)
      クリア署名(multipart/signed)をする。
  - [OpenSSL::PKCS7::BINARY](../../../method/OpenSSL=3a=3aPKCS7/c/BINARY.md)
      data に MIME 正規化を施さない。
  - [OpenSSL::PKCS7::NOATTR](../../../method/OpenSSL=3a=3aPKCS7/c/NOATTR.md)
      PKCS#7 autenticatedAttributes (署名時刻など)をオブジェクトに含めない。
  - [OpenSSL::PKCS7::NOSMIMECAP](../../../method/OpenSSL=3a=3aPKCS7/c/NOSMIMECAP.md)
      署名者が使用可能な暗号アルゴリズムの情報など(SMIMECapabilities)を省略する。


返り値は署名結果を含む [OpenSSL::PKCS7](../../../class/OpenSSL=3a=3aPKCS7.md) オブジェクトを返します。

- **param** `cert` -- 署名に用いる証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト)
- **param** `key` -- 署名に用いる秘密鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) のサブクラスのオブジェクト)
- **param** `data` -- 署名対象のデータ文字列
- **param** `certs` -- 添付する証明書群([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクトの配列)
- **param** `flags` -- フラグ(整数値)
- **raise** `OpenSSL::PKCS7::PKCS7Error` -- 署名に失敗した場合に発生します
