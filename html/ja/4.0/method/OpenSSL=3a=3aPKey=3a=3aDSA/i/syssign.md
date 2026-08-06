# OpenSSL::PKey::DSA#syssign

### def syssign(data) -> String

自身で data に署名をし、 DER 形式の文字列で署名を返します。

data は適切なハッシュ関数で計算されたダイジェストであると仮定しています。

通常は [OpenSSL::PKey::PKey#sign](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/sign.md) を使い、署名をすべきです。

- **param** `data` -- 署名の対象
