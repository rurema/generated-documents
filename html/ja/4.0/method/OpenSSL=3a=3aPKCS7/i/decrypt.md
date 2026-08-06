# OpenSSL::PKCS7#decrypt

### def decrypt(pkey, cert, flags = 0) -> String

暗号化されたデータを復号化し、復号化されたデータを返します。

復号には暗号化に使った公開鍵に対応する秘密鍵と、その公開鍵を含む証明書が必要です。

flags には以下のいずれかを指定できます。
  - [OpenSSL::PKCS7::TEXT](../../../method/OpenSSL=3a=3aPKCS7/c/TEXT.md)
      暗号化されたデータに付けられた text/plain タイプの MIME ヘッダ
      を取り除きます。もしヘッダがなければエラーとなります。

- **param** `pkey` -- 復号化に使う秘密鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) オブジェクト)
- **param** `cert` -- 対応する証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト)
- **param** `flags` -- フラグ
- **raise** `OpenSSL::PKCS7::PKCS7Error` -- 復号に失敗した場合に発生します
