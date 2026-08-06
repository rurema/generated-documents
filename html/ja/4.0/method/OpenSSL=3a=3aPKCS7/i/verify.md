# OpenSSL::PKCS7#verify

### def verify(certs, store, indata = nil, flags = 0) -> bool

署名を検証します。

検証に成功した場合は真を、失敗した場合は偽を返します。

certs には署名者の証明書を含む配列を渡します。
通常 S/MIME 署名には証明者の証明書が含まれていますが、
[OpenSSL::PKCS7.sign](../../../method/OpenSSL=3a=3aPKCS7/s/sign.md) で [OpenSSL::PKCS7::NOCERTS](../../../method/OpenSSL=3a=3aPKCS7/c/NOCERTS.md) を渡した場合には含まれていないので、明示的に渡す必要があります。
このメソッドは配列から適切な証明書を自動的に選択します。

store には検証に用いる証明書ストアを渡します。
検証に必要な信頼できる CA 証明書をあらかじめ証明書ストアに含めておく必要があります。

indata は署名の対象となった文字列を渡します。
nil を渡すと [OpenSSL::PKCS7#data](../../../method/OpenSSL=3a=3aPKCS7/i/data.md) で得られる文字列を用います。通常は nil を渡すべきです。

flags には以下の値の OR を渡します。
  - [OpenSSL::PKCS7::NOINTERN](../../../method/OpenSSL=3a=3aPKCS7/c/NOINTERN.md)
      メッセージに添付された証明書を探索しません。
      これを指定した場合は、必要な証明書をすべて certs から渡す必要が
      あります。ある特定の証明書による署名のみを検証したい場合などに
      用います。
  - [OpenSSL::PKCS7::TEXT](../../../method/OpenSSL=3a=3aPKCS7/c/TEXT.md)
      署名対象のデータに含まれる text/plain タイプの MIME ヘッダを取り除きます。
      もしヘッダがない場合はエラーとなります。
  - [OpenSSL::PKCS7::NOVERIFY](../../../method/OpenSSL=3a=3aPKCS7/c/NOVERIFY.md)
      署名者の証明書を検証しません。
  - [OpenSSL::PKCS7::NOCHAIN](../../../method/OpenSSL=3a=3aPKCS7/c/NOCHAIN.md)
      メッセージに含まれる証明書を中間 CA として利用しません。
  - [OpenSSL::PKCS7::NOSIGS](../../../method/OpenSSL=3a=3aPKCS7/c/NOSIGS.md)
      署名を検証しません。

通常、これらのフラグを渡さなかった場合、
  - (もし存在するならば)メッセージに含まれる中間 CA 証明書の検証を行う
  - その中間 CA 証明書を用いて、署名者の証明書の検証を行う
  - 署名者の証明書を用いて署名の検証を行う
という順で検証が行われます。

この検証は署名者証明書の持ち主が署名したという事実のみを検証します。
署名者証明書の持ち主が本当に意図した相手であるかどうかは保証されません。
証明書の内容から(ユーザに確認を取るなど)適切に判断する必要があります。

検証に失敗した場合は [OpenSSL::PKCS7#error_string](../../../method/OpenSSL=3a=3aPKCS7/i/error_string.md) に失敗した理由を表す文字列がセットされます。

- **param** `certs` -- 証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト)の配列
- **param** `store` -- 証明書ストア([OpenSSL::X509::Store](../../../class/OpenSSL=3a=3aX509=3a=3aStore.md) オブジェクト)
- **param** `indata` -- 署名対象の文字列
- **param** `flags` -- フラグ
- **raise** `OpenSSL::PKCS7::PKCS7Error` -- 検証に失敗した場合に発生します
